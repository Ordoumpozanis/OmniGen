#!/bin/bash

# List of URLs to download
urls=(
    "https://huggingface.co/Shitao/OmniGen-v1/resolve/main/.gitattributes"
    "https://huggingface.co/Shitao/OmniGen-v1/resolve/main/README.md"
    "https://huggingface.co/Shitao/OmniGen-v1/resolve/main/config.json"
    "https://huggingface.co/Shitao/OmniGen-v1/resolve/main/demo_cases.png"
    "https://huggingface.co/Shitao/OmniGen-v1/resolve/main/model.safetensors"
    "https://huggingface.co/Shitao/OmniGen-v1/resolve/main/special_tokens_map.json"
    "https://huggingface.co/Shitao/OmniGen-v1/resolve/main/tokenizer.json"
    "https://huggingface.co/Shitao/OmniGen-v1/resolve/main/tokenizer_config.json"
)

# Loop through each URL and use wget to download
for url in "${urls[@]}"; do
    wget "$url"
done
