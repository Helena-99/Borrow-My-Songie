import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="player"
export default class extends Controller {
  static targets = ['iframeDiv', 'playIcon', 'playingIcon', 'button'];

  connect() {
    this.playing = false;
  }

  toggle(e) {
    this.buttonTarget.classList.toggle('playing');
    const iframeHTML = `<iframe data-player-target='iframe' width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/669538076&color=%23ff5500&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe><div style="font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;"><a href="https://soundcloud.com/popmusicstream" title="Pop Music Stream" target="_blank" style="color: #cccccc; text-decoration: none;">Pop Music Stream</a> · <a href="https://soundcloud.com/taylorswiftofficial/cruel-summer" title="Bohemian Rhapsody - QUEEN (Mama)" target="_blank" style="color: #cccccc; text-decoration: none;">Bohemian Rhapsody - QUEEN (Mama)</a></div>`
    this.playIconTarget.classList.toggle('d-none');
    this.playingIconTarget.classList.toggle('d-none');
    this.iframeDivTarget.classList.toggle('playing')
    if (!this.playing) {
      this.iframeDivTarget.innerHTML = iframeHTML;
    } else {
      this.iframeDivTarget.innerHTML = '';
    }
    this.playing = !this.playing;
  }
}
