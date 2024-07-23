glslc -O --target-env=vulkan1.0 src/shaders/triangleShader.vert -o src/shaders/triangleShaderVert.spv
glslc -O --target-env=vulkan1.0 src/shaders/triangleShader.frag -o src/shaders/triangleShaderFrag.spv

### Voir pourquoi vulkan1.3 ne fonctionne pas. Visiblement glslc s'attent à obtenir du 1.0 malgré la version de VulkanSDK qui est bien en 1.3
#glslc -O --target-env=vulkan1.3 src/shaders/triangleShader.vert -o src/shaders/triangleShaderVert.spv
#glslc -O --target-env=vulkan1.3 src/shaders/triangleShader.frag -o src/shaders/triangleShaderFrag.spv
###