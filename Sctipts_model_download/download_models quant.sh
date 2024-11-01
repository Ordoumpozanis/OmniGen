#!/bin/bash

# Create the vae directory if it doesn't already exist
mkdir -p vae

# List of URLs to download
urls=(
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/.gitattributes"
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/README.md"
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/config.json"
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/demo_cases.png"
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/model.safetensors"
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/special_tokens_map.json"
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/tokenizer.json"
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/tokenizer_config.json"
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/vae/config.json?download=true"
    "https://huggingface.co/sdyy/OmniGen_quantization2/resolve/main/vae/diffusion_pytorch_model.safetensors?download=true"
)

# Loop through each URL and use wget to download
for url in "${urls[@]}"; do
    # Check if the URL contains "vae" to decide the destination folder
    if [[ "$url" == *"vae"* ]]; then
        wget -P vae "$url"
    else
        wget "$url"
    fi
done
