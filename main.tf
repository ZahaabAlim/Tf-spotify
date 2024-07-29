terraform {
  required_providers {
    spotify = {
      source  = "conradludgate/spotify"
      version = "0.1.0"
    }
  }
}

provider "spotify" {
  client_id     = var.spotify_client_id
  client_secret = var.spotify_client_secret
  redirect_uri  = "http://localhost:27228/spotify_callback"
}

resource "spotify_playlist" "my_playlist" {
  name        = "My Terraform Playlist"
  description = "A playlist created using Terraform"
  public      = true
}
