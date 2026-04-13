.class public final Lorg/apache/hc/core5/http/ssl/TlsCiphers;
.super Ljava/lang/Object;


# static fields
.field private static final H2_BLACKLISTED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEAK_CIPHERS:Ljava/lang/String; = "^(TLS|SSL)_(.*)_WITH_(NULL|DES_CBC|DES40_CBC|DES_CBC_40|3DES_EDE_CBC|RC4_128|RC4_40|RC2_CBC_40)_(.*)"

.field private static final WEAK_CIPHER_SUITE_PATTERNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEAK_KEY_EXCHANGES:Ljava/lang/String; = "^(TLS|SSL)_(NULL|ECDH_anon|DH_anon|DH_anon_EXPORT|DHE_RSA_EXPORT|DHE_DSS_EXPORT|DSS_EXPORT|DH_DSS_EXPORT|DH_RSA_EXPORT|RSA_EXPORT|KRB5_EXPORT)_(.*)"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x114

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TLS_NULL_WITH_NULL_NULL"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "TLS_RSA_WITH_NULL_MD5"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "TLS_RSA_WITH_NULL_SHA"

    aput-object v3, v1, v2

    const-string v3, "TLS_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_RC4_128_MD5"

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_RC4_128_SHA"

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_EXPORT_WITH_RC2_CBC_40_MD5"

    const/4 v4, 0x6

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_IDEA_CBC_SHA"

    const/4 v4, 0x7

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0x8

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_DES_CBC_SHA"

    const/16 v4, 0x9

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0xa

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0xb

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_DES_CBC_SHA"

    const/16 v4, 0xc

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0xd

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0xe

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_DES_CBC_SHA"

    const/16 v4, 0xf

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x10

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0x11

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v4, 0x12

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x13

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0x14

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v4, 0x15

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x16

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v4, 0x17

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_RC4_128_MD5"

    const/16 v4, 0x18

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0x19

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_DES_CBC_SHA"

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_WITH_IDEA_CBC_SHA"

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v4, 0x20

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v4, 0x21

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v4, 0x22

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_WITH_IDEA_CBC_MD5"

    const/16 v4, 0x23

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v4, 0x24

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_EXPORT_WITH_RC2_CBC_40_SHA"

    const/16 v4, 0x25

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v4, 0x26

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v4, 0x27

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_EXPORT_WITH_RC2_CBC_40_MD5"

    const/16 v4, 0x28

    aput-object v3, v1, v4

    const-string v3, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v4, 0x29

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_NULL_SHA"

    const/16 v4, 0x2a

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_NULL_SHA"

    const/16 v4, 0x2b

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_NULL_SHA"

    const/16 v4, 0x2c

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x2d

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x2e

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x2f

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x30

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x31

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x32

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x33

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x34

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x35

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x36

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x37

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x38

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v4, 0x39

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x3a

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x3b

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x3c

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x3d

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x3e

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v4, 0x3f

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v4, 0x40

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v4, 0x41

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v4, 0x42

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v4, 0x43

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v4, 0x44

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x45

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x46

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x47

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x48

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x49

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x4a

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x4b

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v4, 0x4c

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v4, 0x4d

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v4, 0x4e

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v4, 0x4f

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v4, 0x50

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v4, 0x51

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_RC4_128_SHA"

    const/16 v4, 0x52

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x53

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x54

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x55

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_RC4_128_SHA"

    const/16 v4, 0x56

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x57

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x58

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x59

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_RC4_128_SHA"

    const/16 v4, 0x5a

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x5b

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x5c

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x5d

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_SEED_CBC_SHA"

    const/16 v4, 0x5e

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_SEED_CBC_SHA"

    const/16 v4, 0x5f

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_SEED_CBC_SHA"

    const/16 v4, 0x60

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_SEED_CBC_SHA"

    const/16 v4, 0x61

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_SEED_CBC_SHA"

    const/16 v4, 0x62

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_SEED_CBC_SHA"

    const/16 v4, 0x63

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0x64

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x65

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0x66

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x67

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0x68

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x69

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0x6a

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x6b

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0x6c

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x6d

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0x6e

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x6f

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x70

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v4, 0x71

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_NULL_SHA256"

    const/16 v4, 0x72

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_NULL_SHA384"

    const/16 v4, 0x73

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x74

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v4, 0x75

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_NULL_SHA256"

    const/16 v4, 0x76

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_NULL_SHA384"

    const/16 v4, 0x77

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x78

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v4, 0x79

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_NULL_SHA256"

    const/16 v4, 0x7a

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_NULL_SHA384"

    const/16 v4, 0x7b

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x7c

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x7d

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x7e

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x7f

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x80

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x81

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v4, 0x82

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v4, 0x83

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v4, 0x84

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v4, 0x85

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v4, 0x86

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256"

    const/16 v4, 0x87

    aput-object v3, v1, v4

    const-string v3, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v4, 0x88

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const/16 v4, 0x89

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const/16 v4, 0x8a

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x8b

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x8c

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x8d

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const/16 v4, 0x8e

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const/16 v4, 0x8f

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x90

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x91

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x92

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const/16 v4, 0x93

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const/16 v4, 0x94

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x95

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x96

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x97

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const/16 v4, 0x98

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const/16 v4, 0x99

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x9a

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x9b

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x9c

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_anon_WITH_NULL_SHA"

    const/16 v4, 0x9d

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const/16 v4, 0x9e

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x9f

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const/16 v4, 0xa0

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const/16 v4, 0xa1

    aput-object v3, v1, v4

    const-string v3, "TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0xa2

    aput-object v3, v1, v4

    const-string v3, "TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0xa3

    aput-object v3, v1, v4

    const-string v3, "TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0xa4

    aput-object v3, v1, v4

    const-string v3, "TLS_SRP_SHA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0xa5

    aput-object v3, v1, v4

    const-string v3, "TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0xa6

    aput-object v3, v1, v4

    const-string v3, "TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA"

    const/16 v4, 0xa7

    aput-object v3, v1, v4

    const-string v3, "TLS_SRP_SHA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0xa8

    aput-object v3, v1, v4

    const-string v3, "TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0xa9

    aput-object v3, v1, v4

    const-string v3, "TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA"

    const/16 v4, 0xaa

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0xab

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const/16 v4, 0xac

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0xad

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const/16 v4, 0xae

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0xaf

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const/16 v4, 0xb0

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0xb1

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const/16 v4, 0xb2

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0xb3

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0xb4

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0xb5

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0xb6

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_RC4_128_SHA"

    const/16 v4, 0xb7

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0xb8

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const/16 v4, 0xb9

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const/16 v4, 0xba

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0xbb

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384"

    const/16 v4, 0xbc

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_NULL_SHA"

    const/16 v4, 0xbd

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_NULL_SHA256"

    const/16 v4, 0xbe

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_NULL_SHA384"

    const/16 v4, 0xbf

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xc0

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xc1

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xc2

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xc3

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xc4

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xc5

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xc6

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_DSS_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xc7

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xc8

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_RSA_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xc9

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xca

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xcb

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xcc

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xcd

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xce

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xcf

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xd0

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xd1

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xd2

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xd3

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_ARIA_128_GCM_SHA256"

    const/16 v4, 0xd4

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_ARIA_256_GCM_SHA384"

    const/16 v4, 0xd5

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_ARIA_128_GCM_SHA256"

    const/16 v4, 0xd6

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_ARIA_256_GCM_SHA384"

    const/16 v4, 0xd7

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_ARIA_128_GCM_SHA256"

    const/16 v4, 0xd8

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_ARIA_256_GCM_SHA384"

    const/16 v4, 0xd9

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_ARIA_128_GCM_SHA256"

    const/16 v4, 0xda

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_ARIA_256_GCM_SHA384"

    const/16 v4, 0xdb

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_ARIA_128_GCM_SHA256"

    const/16 v4, 0xdc

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_ARIA_256_GCM_SHA384"

    const/16 v4, 0xdd

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_ARIA_128_GCM_SHA256"

    const/16 v4, 0xde

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_ARIA_256_GCM_SHA384"

    const/16 v4, 0xdf

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xe0

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xe1

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xe2

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xe3

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xe4

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xe5

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_ARIA_128_GCM_SHA256"

    const/16 v4, 0xe6

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_ARIA_256_GCM_SHA384"

    const/16 v4, 0xe7

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_ARIA_128_GCM_SHA256"

    const/16 v4, 0xe8

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_ARIA_256_GCM_SHA384"

    const/16 v4, 0xe9

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_ARIA_128_CBC_SHA256"

    const/16 v4, 0xea

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_ARIA_256_CBC_SHA384"

    const/16 v4, 0xeb

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0xec

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_CBC_SHA384"

    const/16 v4, 0xed

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0xee

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_CAMELLIA_256_CBC_SHA384"

    const/16 v4, 0xef

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0xf0

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384"

    const/16 v4, 0xf1

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0xf2

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_CAMELLIA_256_CBC_SHA384"

    const/16 v4, 0xf3

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_CAMELLIA_128_GCM_SHA256"

    const/16 v4, 0xf4

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_CAMELLIA_256_GCM_SHA384"

    const/16 v4, 0xf5

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_CAMELLIA_128_GCM_SHA256"

    const/16 v4, 0xf6

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_RSA_WITH_CAMELLIA_256_GCM_SHA384"

    const/16 v4, 0xf7

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_CAMELLIA_128_GCM_SHA256"

    const/16 v4, 0xf8

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_DSS_WITH_CAMELLIA_256_GCM_SHA384"

    const/16 v4, 0xf9

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_CAMELLIA_128_GCM_SHA256"

    const/16 v4, 0xfa

    aput-object v3, v1, v4

    const-string v3, "TLS_DH_anon_WITH_CAMELLIA_256_GCM_SHA384"

    const/16 v4, 0xfb

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_CAMELLIA_128_GCM_SHA256"

    const/16 v4, 0xfc

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_ECDSA_WITH_CAMELLIA_256_GCM_SHA384"

    const/16 v4, 0xfd

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_CAMELLIA_128_GCM_SHA256"

    const/16 v4, 0xfe

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDH_RSA_WITH_CAMELLIA_256_GCM_SHA384"

    const/16 v4, 0xff

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_CAMELLIA_128_GCM_SHA256"

    const/16 v4, 0x100

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_CAMELLIA_256_GCM_SHA384"

    const/16 v4, 0x101

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_CAMELLIA_128_GCM_SHA256"

    const/16 v4, 0x102

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_CAMELLIA_256_GCM_SHA384"

    const/16 v4, 0x103

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x104

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_CAMELLIA_256_CBC_SHA384"

    const/16 v4, 0x105

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x106

    aput-object v3, v1, v4

    const-string v3, "TLS_DHE_PSK_WITH_CAMELLIA_256_CBC_SHA384"

    const/16 v4, 0x107

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x108

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_PSK_WITH_CAMELLIA_256_CBC_SHA384"

    const/16 v4, 0x109

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_CAMELLIA_128_CBC_SHA256"

    const/16 v4, 0x10a

    aput-object v3, v1, v4

    const-string v3, "TLS_ECDHE_PSK_WITH_CAMELLIA_256_CBC_SHA384"

    const/16 v4, 0x10b

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_128_CCM"

    const/16 v4, 0x10c

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_256_CCM"

    const/16 v4, 0x10d

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_128_CCM_8"

    const/16 v4, 0x10e

    aput-object v3, v1, v4

    const-string v3, "TLS_RSA_WITH_AES_256_CCM_8"

    const/16 v4, 0x10f

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_128_CCM"

    const/16 v4, 0x110

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_256_CCM"

    const/16 v4, 0x111

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_128_CCM_8"

    const/16 v4, 0x112

    aput-object v3, v1, v4

    const-string v3, "TLS_PSK_WITH_AES_256_CCM_8"

    const/16 v4, 0x113

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->H2_BLACKLISTED:Ljava/util/Set;

    const-string v0, "^(TLS|SSL)_(NULL|ECDH_anon|DH_anon|DH_anon_EXPORT|DHE_RSA_EXPORT|DHE_DSS_EXPORT|DSS_EXPORT|DH_DSS_EXPORT|DH_RSA_EXPORT|RSA_EXPORT|KRB5_EXPORT)_(.*)"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "^(TLS|SSL)_(.*)_WITH_(NULL|DES_CBC|DES40_CBC|DES_CBC_40|3DES_EDE_CBC|RC4_128|RC4_40|RC2_CBC_40)_(.*)"

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->WEAK_CIPHER_SUITE_PATTERNS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs excludeH2Blacklisted([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-static {v4}, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->isH2Blacklisted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method public static varargs excludeWeak([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-static {v4}, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->isWeak(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method public static isH2Blacklisted(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->H2_BLACKLISTED:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWeak(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->WEAK_CIPHER_SUITE_PATTERNS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
