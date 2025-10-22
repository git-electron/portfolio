'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "0a4d2a7d05de719576a93901856ac0a2",
"assets/AssetManifest.bin.json": "9bd396106175fee30feae7851da2c902",
"assets/AssetManifest.json": "ef141e182dca076eb5899420e60b470e",
"assets/assets/fonts/Awoma/Awoma.ttf": "413c200b38ca92c1eaec8029dce69ffa",
"assets/assets/fonts/Nauryz/Nauryz.ttf": "1efc9dc7414e979667bdca47989dff12",
"assets/assets/fonts/SFPro/Bold.ttf": "d6079ef01292c4bc84dce33988641530",
"assets/assets/fonts/SFPro/BoldItalic.ttf": "37ad4cdd6c17c64d2c7805bc426e45c0",
"assets/assets/fonts/SFPro/Heavy.ttf": "6c498791e52ee77eedea219f291f638d",
"assets/assets/fonts/SFPro/HeavyItalic.ttf": "36abf927285c38b9ef6bb1069bbc4de6",
"assets/assets/fonts/SFPro/Light.ttf": "359f126c743e77d113cdc1ddda32534b",
"assets/assets/fonts/SFPro/LightItalic.ttf": "27193296e16e65cac9cae9a11199b6b2",
"assets/assets/fonts/SFPro/Medium.ttf": "a260cbc18870da144038776461d9df28",
"assets/assets/fonts/SFPro/MediumItalic.ttf": "597d7713b611c3ac9b78b0b073d236a6",
"assets/assets/fonts/SFPro/Regular.ttf": "85bd46c1cff02c1d8360cc714b8298fa",
"assets/assets/fonts/SFPro/RegularItalic.ttf": "90ad050f9579d382bd5fe2e2b85bba26",
"assets/assets/fonts/SFPro/Semibold.ttf": "1a131c948d598ecec700d37d168a15b5",
"assets/assets/fonts/SFPro/SemiboldItalic.ttf": "5f7b2454efc9b815951433f0770c7f6c",
"assets/assets/icons/contacts/email/dark.svg": "00c0e4a0a666a70cf334a6396524dc64",
"assets/assets/icons/contacts/email/light.svg": "095119e765c6033c65b0713827e3e64f",
"assets/assets/icons/contacts/github/dark.svg": "f5de2555759b7b1699570789ecff366e",
"assets/assets/icons/contacts/github/light.svg": "30e71c032ccb769a00f0cba5af81e3c8",
"assets/assets/icons/contacts/github/primary.svg": "ea6be28dc61b991ccd49e57dc77b8c6e",
"assets/assets/icons/contacts/hh/dark.svg": "0925c32101ccef3b9a94eca3c7b3bff6",
"assets/assets/icons/contacts/hh/light.svg": "3c96c1eb0dbd3b5ddb04232c562fc9fa",
"assets/assets/icons/contacts/hh/primary.svg": "8c45be4865e2ba71b1b6df13faaedd62",
"assets/assets/icons/contacts/home/dark.svg": "bdfd448375d11b6e3a0883eb82397c02",
"assets/assets/icons/contacts/home/light.svg": "6a90c2e09653a938a9498e66bf08566c",
"assets/assets/icons/contacts/phone/dark.svg": "2b3535783013874f06348df4226a8c0f",
"assets/assets/icons/contacts/phone/light.svg": "e1d047cd930fe2ad17e3361407e98840",
"assets/assets/icons/contacts/telegram/dark.svg": "5f64d7288571a5181c242a6d5cb48ac7",
"assets/assets/icons/contacts/telegram/light.svg": "9f4968d3c6fbf0b6739d225c2be63626",
"assets/assets/icons/contacts/telegram/primary.svg": "c34596336701d2900de79cdc9fc9c2c1",
"assets/assets/icons/general/logo.svg": "e71ba23498162749c162534dd0719de8",
"assets/assets/images/general/logo/filled/favicon.png": "a315ad71a8ea09147b24e2ba56970702",
"assets/assets/images/general/logo/filled/full.png": "ab3e5c4724c35f0ac52530efcf52717d",
"assets/assets/images/general/logo/filled/half.png": "6753d6474fb46aad979e8cef68392892",
"assets/assets/images/general/logo/filled/quarter.png": "6b9fcd88c69c0a8157b575a88a7e0b83",
"assets/assets/images/general/logo/transparent/favicon.png": "88e567e374993b79590ad4c6b2a32b31",
"assets/assets/images/general/logo/transparent/full.png": "41a0b640f905a55a565ab78cd24fa789",
"assets/assets/images/general/logo/transparent/half.png": "8f4578cf5ee3170b4a9a6a2bba9193e3",
"assets/assets/images/general/logo/transparent/quarter.png": "7d2c76d1e6a5605866633862ad3de055",
"assets/assets/images/header/main_background.png": "fd183dba707bc0ebbb806443e56707ca",
"assets/assets/images/header/main_photo.png": "ed17a65bc12f5b5b63a1efa77a73a822",
"assets/FontManifest.json": "39283716f66aed21e35c07874d2f61d5",
"assets/fonts/MaterialIcons-Regular.otf": "6c4fca8f540a0986c266e70ece070503",
"assets/NOTICES": "8db4e65a88a6a277415c3848fcbc28df",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "88e567e374993b79590ad4c6b2a32b31",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "b2b2fdfe3d89400df60f29355c3cdb2b",
"icons/Icon-192.png": "88e567e374993b79590ad4c6b2a32b31",
"icons/Icon-512.png": "7d2c76d1e6a5605866633862ad3de055",
"icons/Icon-maskable-192.png": "88e567e374993b79590ad4c6b2a32b31",
"icons/Icon-maskable-512.png": "7d2c76d1e6a5605866633862ad3de055",
"index.html": "399cad8d25f2e1b9653f57b266fdf658",
"/": "399cad8d25f2e1b9653f57b266fdf658",
"main.dart.js": "c3c946ded4b1c43807188b80400a0013",
"main.dart.js_1.part.js": "ebdd3a374d45489dc3a654bdf587a805",
"manifest.json": "f8d6936f80404be08be17f122d2bca67",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
