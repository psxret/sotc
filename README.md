# sotc

# Installation

## Docker

1. docker build . -t sotc
2. docker run -it --rm --mount type=bind,source="$(pwd)",destination=/sotc sotc /bin/bash
