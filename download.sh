VERSION="v0.1.0"
REPO="SimoneNicosanti/ASSO_Project_Test"
ARCHIVE="Whole_Compose-${VERSION}.tar.gz"

curl -L \
  -o "$ARCHIVE" \
  "https://github.com/${REPO}/releases/download/${VERSION}/${ARCHIVE}"

tar -xzf "$ARCHIVE"
