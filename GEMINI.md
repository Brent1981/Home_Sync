# Hogwarts Castle Master Project Memory

## Project Phoenix: Clean Slate Rebuild
- **Architecture:** "Source of Truth" Git repository residing on TrueNAS `Configs_Backups/MasterConfig`.
- **Master Directory:** `/home/brent/ai/` (mounted via NFS on all nodes).
- **GitHub Remote:** `https://github.com/Brent1981/Home_Sync.git`

## Network Infrastructure
- **OPNsense Gateway:** `10.0.110.2`
- **TrueNAS Server:** `10.0.110.160`
- **Home Assistant:** `10.0.110.161` (ZHA for Zigbee, no external MQTT required).
- **Jarvis (Docker Host):** `10.0.110.164`
- **AI Powerhouse (Edith):** `10.0.110.153`
- **Friday (Raspberry Pi):** `10.0.110.169`

## Media Stack (Jarvis - 10.0.110.164)
- **VPN:** Gluetun with ProtonVPN Wireguard (Tunnel IP verified).
- **Downloader:** qBittorrent (Port 8080).
- **Management:** Sonarr (8989), Radarr (7878), Prowlarr (9696), Jellyseerr (5055).
- **Playback:** Jellyfin (8096).
- **Cloudflare Bypass:** FlareSolverr (8191) with 120s timeout.

## Storage Mappings (Verified)
- **Library:** `/mnt/media_datatank2/` (mapped to `/tv`, `/movies`, and `/data` in containers).
- **Downloads:** `/mnt/media_datatank2/downloads/` (unified across all services).
- **Configs:** `/mnt/Configs_Backups/Services/` (persistent container databases).

## Gemini Anywhere: Cross-Device Synchronization
To use Gemini on a new device while maintaining these memories:

1. **On the new device:**
   ```bash
   git clone https://github.com/Brent1981/Home_Sync.git ~/ai
   cd ~/ai
   ./scripts/sync-gemini.sh
   ```
2. **Setup Global Memory Sync:**
   The sync script copies your global memory (`~/.gemini/GEMINI.md`) to `docs/GLOBAL_GEMINI.md` in the repo.
3. **To stay synced:**
   Run `./scripts/sync-gemini.sh` at the beginning and end of every session on any device.

## Critical API Keys
*(See `credentials.md` for live values - gitignored)*
- Sonarr: e610cae45ff044c3ac5af4d0924e109e
- Radarr: 2c0d5a014fa14e8bbde8dac07e1f725f
- Prowlarr: 5988503f5cb6412992e9b7ec907db3dd
