# ***** BEGIN GPL LICENSE BLOCK *****
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#
# ***** END GPL LICENSE BLOCK *****

set(ZLIB_VERSION 1.2.11)
set(ZLIB_URI https://zlib.net/zlib-${ZLIB_VERSION}.tar.gz)
set(ZLIB_HASH 1c9f62f0778697a09d36121ead88e08e)

set(OPENAL_VERSION 1.20.1)
set(OPENAL_URI http://openal-soft.org/openal-releases/openal-soft-${OPENAL_VERSION}.tar.bz2)
set(OPENAL_HASH 556695068ce8375b89986083d810fd35)

set(PNG_VERSION 1.6.35)
set(PNG_URI http://prdownloads.sourceforge.net/libpng/libpng-${PNG_VERSION}.tar.xz)
set(PNG_HASH 678b7e696a62a193ed3503b04bf449d6)

set(JPEG_VERSION 1.5.3)
set(JPEG_URI https://github.com/libjpeg-turbo/libjpeg-turbo/archive/${JPEG_VERSION}.tar.gz)
set(JPEG_HASH 5b7549d440b86c98a517355c102d155e)

set(BOOST_VERSION 1.70.0)
set(BOOST_VERSION_NODOTS 1_70_0)
set(BOOST_VERSION_NODOTS_SHORT 1_70)
set(BOOST_URI https://dl.bintray.com/boostorg/release/${BOOST_VERSION}/source/boost_${BOOST_VERSION_NODOTS}.tar.gz)
set(BOOST_HASH fea771fe8176828fabf9c09242ee8c26)

# Using old version as recommended by OpenVDB build documentation.
set(BLOSC_VERSION 1.5.0)
set(BLOSC_URI https://github.com/Blosc/c-blosc/archive/v${BLOSC_VERSION}.tar.gz)
set(BLOSC_HASH 6e4a49c8c06f05aa543f3312cfce3d55)

set(PTHREADS_VERSION 3.0.0)
set(PTHREADS_URI http://sourceforge.mirrorservice.org/p/pt/pthreads4w/pthreads4w-code-v${PTHREADS_VERSION}.zip)
set(PTHREADS_HASH f3bf81bb395840b3446197bcf4ecd653)

set(OPENEXR_VERSION 2.4.0)
set(OPENEXR_URI https://github.com/AcademySoftwareFoundation/openexr/archive/v${OPENEXR_VERSION}.tar.gz)
set(OPENEXR_HASH 9e4d69cf2a12c6fb19b98af7c5e0eaee)
if(WIN32)
  # Openexr started appending _d on its own so now
  # we need to tell the build the postfix is _s while
  # telling all other deps the postfix is _s_d
  if(BUILD_MODE STREQUAL Release)
    set(OPENEXR_VERSION_POSTFIX _s)
    set(OPENEXR_VERSION_BUILD_POSTFIX _s)
  else()
    set(OPENEXR_VERSION_POSTFIX _s_d)
    set(OPENEXR_VERSION_BUILD_POSTFIX _s)
  endif()
else()
  set(OPENEXR_VERSION_BUILD_POSTFIX)
  set(OPENEXR_VERSION_POSTFIX)
endif()

set(FREETYPE_VERSION 2.10.2)
set(FREETYPE_URI http://prdownloads.sourceforge.net/freetype/freetype-${FREETYPE_VERSION}.tar.gz)
set(FREETYPE_HASH b1cb620e4c875cd4d1bfa04945400945)

set(GLEW_VERSION 1.13.0)
set(GLEW_URI http://prdownloads.sourceforge.net/glew/glew/${GLEW_VERSION}/glew-${GLEW_VERSION}.tgz)
set(GLEW_HASH 7cbada3166d2aadfc4169c4283701066)

set(FREEGLUT_VERSION 3.0.0)
set(FREEGLUT_URI http://pilotfiber.dl.sourceforge.net/project/freeglut/freeglut/${FREEGLUT_VERSION}/freeglut-${FREEGLUT_VERSION}.tar.gz)
set(FREEGLUT_HASH 90c3ca4dd9d51cf32276bc5344ec9754)

set(HDF5_VERSION 1.8.17)
set(HDF5_URI https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.8/hdf5-${HDF5_VERSION}/src/hdf5-${HDF5_VERSION}.tar.gz)
set(HDF5_HASH 7d572f8f3b798a628b8245af0391a0ca)

set(ALEMBIC_VERSION 1.7.12)
set(ALEMBIC_URI https://github.com/alembic/alembic/archive/${ALEMBIC_VERSION}.tar.gz)
set(ALEMBIC_MD5 e2b3777f23c5c09481a008cc6f0f8a40)

# hash is for 3.1.2
set(GLFW_GIT_UID 30306e54705c3adae9fe082c816a3be71963485c)
set(GLFW_URI https://github.com/glfw/glfw/archive/${GLFW_GIT_UID}.zip)
set(GLFW_HASH 20cacb1613da7eeb092f3ac4f6b2b3d0)

# latest uid in git as of 2016-04-01
set(CLEW_GIT_UID 277db43f6cafe8b27c6f1055f69dc67da4aeb299)
set(CLEW_URI https://github.com/OpenCLWrangler/clew/archive/${CLEW_GIT_UID}.zip)
set(CLEW_HASH 2c699d10ed78362e71f56fae2a4c5f98)

# latest uid in git as of 2016-04-01
set(CUEW_GIT_UID 1744972026de9cf27c8a7dc39cf39cd83d5f922f)
set(CUEW_URI https://github.com/CudaWrangler/cuew/archive/${CUEW_GIT_UID}.zip)
set(CUEW_HASH 86760d62978ebfd96cd93f5aa1abaf4a)

set(OPENSUBDIV_VERSION v3_4_3)
set(OPENSUBDIV_URI https://github.com/PixarAnimationStudios/OpenSubdiv/archive/${OPENSUBDIV_VERSION}.tar.gz)
set(OPENSUBDIV_HASH 7bbfa275d021fb829e521df749160edb)

set(SDL_VERSION 2.0.12)
set(SDL_URI https://www.libsdl.org/release/SDL2-${SDL_VERSION}.tar.gz)
set(SDL_HASH 783b6f2df8ff02b19bb5ce492b99c8ff)

set(OPENCOLLADA_VERSION v1.6.68)
set(OPENCOLLADA_URI https://github.com/KhronosGroup/OpenCOLLADA/archive/${OPENCOLLADA_VERSION}.tar.gz)
set(OPENCOLLADA_HASH ee7dae874019fea7be11613d07567493)

set(OPENCOLORIO_VERSION 1.1.0)
set(OPENCOLORIO_URI https://github.com/imageworks/OpenColorIO/archive/v${OPENCOLORIO_VERSION}.tar.gz)
set(OPENCOLORIO_HASH 802d8f5b1d1fe316ec5f76511aa611b8)

set(LLVM_VERSION 9.0.1)
set(LLVM_URI https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_VERSION}/llvm-${LLVM_VERSION}.src.tar.xz)
set(LLVM_HASH 31eb9ce73dd2a0f8dcab8319fb03f8fc)

set(CLANG_URI https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_VERSION}/clang-${LLVM_VERSION}.src.tar.xz)
set(CLANG_HASH 13468e4a44940efef1b75e8641752f90)

set(OPENMP_URI https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_VERSION}/openmp-${LLVM_VERSION}.src.tar.xz)
set(OPENMP_HASH 6eade16057edbdecb3c4eef9daa2bfcf)

set(OPENIMAGEIO_VERSION 1.8.13)
set(OPENIMAGEIO_URI https://github.com/OpenImageIO/oiio/archive/Release-${OPENIMAGEIO_VERSION}.tar.gz)
set(OPENIMAGEIO_HASH f5526c3c9878029ee900d84856683f93)

set(TIFF_VERSION 4.0.9)
set(TIFF_URI http://download.osgeo.org/libtiff/tiff-${TIFF_VERSION}.tar.gz)
set(TIFF_HASH 54bad211279cc93eb4fca31ba9bfdc79)

set(OSL_VERSION 1.10.9)
set(OSL_URI https://github.com/imageworks/OpenShadingLanguage/archive/Release-${OSL_VERSION}.tar.gz)
set(OSL_HASH a94f1e8506f7e8f5e993653de5c5fa00)

set(PYTHON_VERSION 3.7.4)
set(PYTHON_SHORT_VERSION 3.7)
set(PYTHON_SHORT_VERSION_NO_DOTS 37)
set(PYTHON_URI https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz)
set(PYTHON_HASH d33e4aae66097051c2eca45ee3604803)

set(TBB_VERSION 2019_U9)
set(TBB_URI https://github.com/oneapi-src/oneTBB/archive/${TBB_VERSION}.tar.gz)
set(TBB_HASH 26263622e9187212ec240dcf01b66207)

set(OPENVDB_VERSION 7.0.0)
set(OPENVDB_URI https://github.com/dreamworksanimation/openvdb/archive/v${OPENVDB_VERSION}.tar.gz)
set(OPENVDB_HASH fd6c4f168282f7e0e494d290cd531fa8)

set(IDNA_VERSION 2.8)
set(CHARDET_VERSION 3.0.4)
set(URLLIB3_VERSION 1.25.3)
set(CERTIFI_VERSION 2019.6.16)
set(REQUESTS_VERSION 2.22.0)

set(NUMPY_VERSION v1.17.0)
set(NUMPY_SHORT_VERSION 1.17)
set(NUMPY_URI https://files.pythonhosted.org/packages/da/32/1b8f2bb5fb50e4db68543eb85ce37b9fa6660cd05b58bddfafafa7ed62da/numpy-1.17.0.zip)
set(NUMPY_HASH aed49b31bcb44ec73b8155be78566135)

set(LAME_VERSION 3.100)
set(LAME_URI http://downloads.sourceforge.net/project/lame/lame/3.100/lame-${LAME_VERSION}.tar.gz)
set(LAME_HASH 83e260acbe4389b54fe08e0bdbf7cddb)

set(OGG_VERSION 1.3.3)
set(OGG_URI http://downloads.xiph.org/releases/ogg/libogg-${OGG_VERSION}.tar.gz)
set(OGG_HASH c2e8a485110b97550f453226ec644ebac6cb29d1caef2902c007edab4308d985)

set(VORBIS_VERSION 1.3.6)
set(VORBIS_URI http://downloads.xiph.org/releases/vorbis/libvorbis-${VORBIS_VERSION}.tar.gz)
set(VORBIS_HASH 6ed40e0241089a42c48604dc00e362beee00036af2d8b3f46338031c9e0351cb)

set(THEORA_VERSION 1.1.1)
set(THEORA_URI http://downloads.xiph.org/releases/theora/libtheora-${THEORA_VERSION}.tar.bz2)
set(THEORA_HASH b6ae1ee2fa3d42ac489287d3ec34c5885730b1296f0801ae577a35193d3affbc)

set(FLAC_VERSION 1.3.2)
set(FLAC_URI http://downloads.xiph.org/releases/flac/flac-${FLAC_VERSION}.tar.xz)
set(FLAC_HASH 91cfc3ed61dc40f47f050a109b08610667d73477af6ef36dcad31c31a4a8d53f)

set(VPX_VERSION 1.7.0)
set(VPX_URI https://github.com/webmproject/libvpx/archive/v${VPX_VERSION}/libvpx-v${VPX_VERSION}.tar.gz)
set(VPX_HASH 1fec931eb5c94279ad219a5b6e0202358e94a93a90cfb1603578c326abfc1238)

set(OPUS_VERSION 1.3.1)
set(OPUS_URI https://archive.mozilla.org/pub/opus/opus-${OPUS_VERSION}.tar.gz)
set(OPUS_HASH 65b58e1e25b2a114157014736a3d9dfeaad8d41be1c8179866f144a2fb44ff9d)

set(X264_URI http://download.videolan.org/pub/videolan/x264/snapshots/x264-snapshot-20180811-2245-stable.tar.bz2)
set(X264_HASH ae8a868a0e236a348b35d79f3ee80294b169d1195408b689f9851383661ed7aa)

set(XVIDCORE_VERSION 1.3.5)
set(XVIDCORE_URI http://downloads.xvid.org/downloads/xvidcore-${XVIDCORE_VERSION}.tar.gz)
set(XVIDCORE_HASH 165ba6a2a447a8375f7b06db5a3c91810181f2898166e7c8137401d7fc894cf0)

# This has to be in sync with the version in blenders /extern folder.
set(OPENJPEG_VERSION 2.3.0)
set(OPENJPEG_SHORT_VERSION 2.3)
# Use slightly newer commit after release which includes a cmake fix
set(OPENJPEG_URI https://github.com/uclouvain/openjpeg/archive/66297f07a43.zip)
set(OPENJPEG_HASH 8242b18d908c7c42174e4231a741cfa7ce7c26b6ed5c9644feb9df7b3054310b)

set(FAAD_VERSION 2-2.8.8)
set(FAAD_URI http://downloads.sourceforge.net/faac/faad${FAAD_VERSION}.tar.gz)
set(FAAD_HASH 28f6116efdbe9378269f8a6221767d1f)

set(FFMPEG_VERSION 4.0.2)
set(FFMPEG_URI http://ffmpeg.org/releases/ffmpeg-${FFMPEG_VERSION}.tar.bz2)
set(FFMPEG_HASH 5576e8a22f80b6a336db39808f427cfb)

set(FFTW_VERSION 3.3.8)
set(FFTW_URI http://www.fftw.org/fftw-${FFTW_VERSION}.tar.gz)
set(FFTW_HASH 8aac833c943d8e90d51b697b27d4384d)

set(ICONV_VERSION 1.15)
set(ICONV_URI http://ftp.gnu.org/pub/gnu/libiconv/libiconv-${ICONV_VERSION}.tar.gz)
set(ICONV_HASH ace8b5f2db42f7b3b3057585e80d9808)

set(LAPACK_VERSION 3.6.0)
set(LAPACK_URI http://www.netlib.org/lapack/lapack-${LAPACK_VERSION}.tgz)
set(LAPACK_HASH f2f6c67134e851fe189bb3ca1fbb5101)

set(SNDFILE_VERSION 1.0.28)
set(SNDFILE_URI http://www.mega-nerd.com/libsndfile/files/libsndfile-${SNDFILE_VERSION}.tar.gz)
set(SNDFILE_HASH 646b5f98ce89ac60cdb060fcd398247c)

# set(HIDAPI_VERSION 0.8.0-rc1)
# set(HIDAPI_URI https://github.com/signal11/hidapi/archive/hidapi-${HIDAPI_VERSION}.tar.gz)
# set(HIDAPI_HASH 069f9dd746edc37b6b6d0e3656f47199)

set(HIDAPI_UID 89a6c75dc6f45ecabd4ddfbd2bf5ba6ad8ba38b5)
set(HIDAPI_URI https://github.com/TheOnlyJoey/hidapi/archive/${HIDAPI_UID}.zip)
set(HIDAPI_HASH b6e22f6b514f8bcf594989f20ffc46fb)

set(WEBP_VERSION 0.6.1)
set(WEBP_URI https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-${WEBP_VERSION}.tar.gz)
set(WEBP_HASH b49ce9c3e3e9acae4d91bca44bb85a72)

set(SPNAV_VERSION 0.2.3)
set(SPNAV_URI http://downloads.sourceforge.net/project/spacenav/spacenav%20library%20%28SDK%29/libspnav%20${SPNAV_VERSION}/libspnav-${SPNAV_VERSION}.tar.gz)
set(SPNAV_HASH 44d840540d53326d4a119c0f1aa7bf0a)

set(JEMALLOC_VERSION 5.0.1)
set(JEMALLOC_URI https://github.com/jemalloc/jemalloc/releases/download/${JEMALLOC_VERSION}/jemalloc-${JEMALLOC_VERSION}.tar.bz2)
set(JEMALLOC_HASH 507f7b6b882d868730d644510491d18f)

set(XML2_VERSION 2.9.4)
set(XML2_URI http://xmlsoft.org/sources/libxml2-${XML2_VERSION}.tar.gz)
set(XML2_HASH ae249165c173b1ff386ee8ad676815f5)

set(TINYXML_VERSION 2_6_2)
set(TINYXML_VERSION_DOTS 2.6.2)
set(TINYXML_URI https://nchc.dl.sourceforge.net/project/tinyxml/tinyxml/${TINYXML_VERSION_DOTS}/tinyxml_${TINYXML_VERSION}.tar.gz)
set(TINYXML_HASH c1b864c96804a10526540c664ade67f0)

set(YAMLCPP_VERSION 0.6.3)
set(YAMLCPP_URI https://codeload.github.com/jbeder/yaml-cpp/tar.gz/yaml-cpp-${YAMLCPP_VERSION})
set(YAMLCPP_HASH b45bf1089a382e81f6b661062c10d0c2)

set(LCMS_VERSION 2.9)
set(LCMS_URI https://nchc.dl.sourceforge.net/project/lcms/lcms/${LCMS_VERSION}/lcms2-${LCMS_VERSION}.tar.gz)
set(LCMS_HASH 8de1b7724f578d2995c8fdfa35c3ad0e)

set(PUGIXML_VERSION 1.9)
set(PUGIXML_URI https://github.com/zeux/pugixml/archive/v1.9.tar.gz)
set(PUGIXML_HASH 9346ca1dce2c48f1748c12fdac41a714)

set(FLEXBISON_VERSION 2.5.5)
set(FLEXBISON_URI http://prdownloads.sourceforge.net/winflexbison//win_flex_bison-2.5.5.zip)
set(FLEXBISON_HASH d87a3938194520d904013abef3df10ce)

# Libraries to keep Python modules static on Linux.

# NOTE: bzip.org domain does no longer belong to BZip 2 project, so we download
# sources from Debian packaging.
set(BZIP2_VERSION 1.0.6)
set(BZIP2_URI http://http.debian.net/debian/pool/main/b/bzip2/bzip2_${BZIP2_VERSION}.orig.tar.bz2)
set(BZIP2_HASH d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7)

set(FFI_VERSION 3.2.1)
set(FFI_URI https://sourceware.org/pub/libffi/libffi-${FFI_VERSION}.tar.gz)
set(FFI_HASH d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37)

set(LZMA_VERSION 5.2.4)
set(LZMA_URI https://tukaani.org/xz/xz-${LZMA_VERSION}.tar.bz2)
set(LZMA_HASH 3313fd2a95f43d88e44264e6b015e7d03053e681860b0d5d3f9baca79c57b7bf)

set(SSL_VERSION 1.1.0i)
set(SSL_URI https://www.openssl.org/source/openssl-${SSL_VERSION}.tar.gz)
set(SSL_HASH ebbfc844a8c8cc0ea5dc10b86c9ce97f401837f3fa08c17b2cdadc118253cf99)

set(SQLITE_VERSION 3.24.0)
set(SQLITE_URI https://www.sqlite.org/2018/sqlite-src-3240000.zip)
set(SQLITE_HASH fb558c49ee21a837713c4f1e7e413309aabdd9c7)

set(EMBREE_VERSION 3.8.0)
set(EMBREE_URI https://github.com/embree/embree/archive/v${EMBREE_VERSION}.zip)
set(EMBREE_HASH ac504d5426945fe25dec1267e0c39d52)

set(USD_VERSION 19.11)
set(USD_URI https://github.com/PixarAnimationStudios/USD/archive/v${USD_VERSION}.tar.gz)
set(USD_HASH 79ff176167b3fe85f4953abd6cc5e0cc)

set(OIDN_VERSION 1.0.0)
set(OIDN_URI https://github.com/OpenImageDenoise/oidn/releases/download/v${OIDN_VERSION}/oidn-${OIDN_VERSION}.src.zip)
set(OIDN_HASH 19fe67b0164e8f020ac8a4f520defe60)

set(LIBGLU_VERSION 9.0.1)
set(LIBGLU_URI ftp://ftp.freedesktop.org/pub/mesa/glu/glu-${LIBGLU_VERSION}.tar.xz)
set(LIBGLU_HASH 151aef599b8259efe9acd599c96ea2a3)

set(MESA_VERSION 18.3.1)
set(MESA_URI ftp://ftp.freedesktop.org/pub/mesa//mesa-${MESA_VERSION}.tar.xz)
set(MESA_HASH d60828056d77bfdbae0970f9b15fb1be)

set(XR_OPENXR_SDK_VERSION 1.0.8)
set(XR_OPENXR_SDK_URI https://github.com/KhronosGroup/OpenXR-SDK/archive/release-${XR_OPENXR_SDK_VERSION}.tar.gz)
set(XR_OPENXR_SDK_HASH c6de63d2e0f9029aa58dfa97cad8ce07)
