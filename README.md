# ivrit-runpod-yi

[ivrit.ai's RunPod serverless worker](https://github.com/ivrit-ai/runpod-serverless), unchanged, with one model added:
**`ivrit-ai/yi-whisper-large-v3-ct2`** (the full-size Yiddish model). The upstream image bakes only the turbo
Yiddish model, and the worker loads models with `local_files_only=True`, so the large one has to be in the image.

Image: `ghcr.io/smrtesy/ivrit-runpod-yi:latest` - built by GitHub Actions on every push to `main`.

Usage is identical to upstream; pass `model="ivrit-ai/yi-whisper-large-v3-ct2"` and `language="yi"`.

Credits: worker by [ivrit.ai](https://ivrit.ai) (MIT), model by ivrit.ai (Apache-2.0).
