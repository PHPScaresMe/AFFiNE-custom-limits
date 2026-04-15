# image: ghcr.io/toeverything/affine:${AFFINE_REVISION:-stable}
ARG AFFINE_REVISION=stable
FROM ghcr.io/toeverything/affine:${AFFINE_REVISION}
# left side of middle / finds something, right side modifies it.
# this gives you 10,000 member limit instead of 10 as is in the default free_plan_v1
RUN sed -i 's/memberLimit:10/memberLimit:10000/g' /app/dist/main.js
RUN sed -i 's/blobLimit:100/blobLimit:10000/g' /app/dist/main.js
RUN sed -i 's/storageQuota:100/storageQuota:10000/g' /app/dist/main.js
RUN sed -i 's/historyPeriod:30/historyPeriod:365/g' /app/dist/main.js
RUN sed -i 's/copilotActionLimit:10/copilotActionLimit:100/g' /app/dist/main.js

# NOTE: this is a basic mass-replacement. It's not going to change for free_plan_v1 only, any plan with a member limit of 10 will get 10k.
# if you want it tighter, it can be easily done
