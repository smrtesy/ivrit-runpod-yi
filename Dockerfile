# ivrit.ai's RunPod serverless worker, unchanged, plus the Yiddish whisper-large-v3 model.
# The base worker loads models with local_files_only=True, so a model must be baked
# into the image to be usable. The base ships only the *turbo* Yiddish model.
# Base pinned by digest = yairlifshitz/whisper-runpod-serverless:ivrit-2026.05.31 (= latest on 2026-10-11).
FROM yairlifshitz/whisper-runpod-serverless@sha256:f48435f17749bca2823a7c43647a67c9eb60ab77975f12dabcef9b167a21f0c6

RUN python3 -c 'import faster_whisper; m = faster_whisper.WhisperModel("ivrit-ai/yi-whisper-large-v3-ct2")'

LABEL org.opencontainers.image.source="https://github.com/smrtesy/ivrit-runpod-yi"
LABEL org.opencontainers.image.description="ivrit.ai RunPod worker + ivrit-ai/yi-whisper-large-v3-ct2"
LABEL org.opencontainers.image.licenses="MIT"
