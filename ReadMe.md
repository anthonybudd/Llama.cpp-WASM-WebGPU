# DEMO: Llama.cpp WASM WebGPU

This repo is a technical proof of concept showing an LLM running client-side in a browser using Llama.cpp compiled to WASM with WebGPU. 

## [Live Demo](https://llama-cpp-wasm-webgpu.anthonybudd.io)

This demo will summarize a PDF document. First use the dropdown to select a model, once the model has loaded, drop a .PDF file onto the page and the model will summarize the document. Qwen2.5-0.5B is smaller but less accurate, Qwen3.5-0.8B generates far better results but takes a lot longer to return results. Open the console for additional information.

### Getting Started

```sh
git clone git@github.com:anthonybudd/Llama.cpp-WASM-WebGPU.git
cd Llama.cpp-WASM-WebGPU.git

wget -O qwen2.5-0.5b-instruct-q2_k.gguf "https://huggingface.co/Qwen/Qwen2.5-0.5B-Instruct-GGUF/resolve/main/qwen2.5-0.5b-instruct-q2_k.gguf?download=true"
wget -O qwen3.5-0.8b-iq4_xs.gguf "https://huggingface.co/unsloth/Qwen3.5-0.8B-GGUF/resolve/main/Qwen3.5-0.8B-IQ4_XS.gguf?download=true"

docker build -t llama-webgpu .
docker run -p 80:80 --rm -it -v $(pwd):/usr/share/nginx/html llama-webgpu

open http://localhost
```
