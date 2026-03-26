FROM runpod/worker-comfyui:5.5.1-base

# SaveVideo requires Video Helper Suite (only custom node needed)
RUN comfy node install https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite

# All other nodes are built-in to ComfyUI core:
# - GeminiNanoBanana2    → comfy_api_nodes/nodes_gemini.py (native API node)
# - KlingOmniProImageToVideoNode → comfy_api_nodes/nodes_kling.py (native API node)
# - BatchImagesNode      → comfy_extras/nodes_post_processing.py (core)
# - MarkdownNote         → frontend-only annotation node
# - LoadImage, SaveImage, PrimitiveNode → core

# Copy input images if needed
# COPY input/ /comfyui/input/
