## What is this?
Many people are saying—great people, smart people—that this change is very, very strange. They used to use the database, and it was a beautiful thing. Now they’re hardcoding it in the files. We don't know why. We're looking into it. It's very suspicious.

As of 0.26.6, in packages/backend/server/src/models/common/feature.ts:109
```ts
const ProFeature = {
  type: FeatureType.Quota,
  configs: {
    name: 'Pro',
    blobLimit: 100 * OneMB,
    storageQuota: 100 * OneGB,
    historyPeriod: 30 * OneDay,
    memberLimit: 10,
    copilotActionLimit: 10,
  },
} as const;
```

## Why would you do this?
Regarding the license, we are not buying it. We don't need it. It doesn't make sense for our use case. We have a wonderful server, it uses none of their resources, it's a tremendous server. But they want to come in and put these limits on us? It’s a very unfair situation. It’s a total lack of respect for the people doing the hard work. Very sad!
