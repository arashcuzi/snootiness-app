module.exports = {
  cache: {
    cacheId: "snootiness-app",
    runtimeCaching: [{
      handler: "fastest",
      urlPattern: "\/$"
    }],
    staticFileGlobs: ['dist/**/*']
  },
  manifest: {
    background: "#FFFFFF",
    title: "snootiness-app",
    short_name: "PWA",
    theme_color: "#FFFFFF"
  }
};
