import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="image-search"
export default class extends Controller {
 static targets=["display-image", "artist"];

  connect() {
    console.log("hello");
  }

  searchImage(e) {
    const artist = this.artistTarget.value;
    const album = e.target.value;
    const type = ["album"];
    const url = `https://api.spotify.com/v1/search?q=${artist}+${album}&type=${type}`;
    const clientId = 'd04bbf0a3dab4a558631d7015348dad2';
    const clientSecret = '060b94e7ae074a91b84faaeac558bb34';

    const tokenUrl = 'https://accounts.spotify.com/api/token';
    fetch(tokenUrl, {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Authorization': `Basic ${clientId}:${clientSecret}`
      },
      body: new FormData({
        "grant_type":    "client_credentials"
      })
    })
      .then(response => response.json())
      .then(data => {
      console.log(data);
    })
  }
}
