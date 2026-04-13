.class public final Lw5/i;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lw5/h;

.field public static final c:Ljava/util/LinkedHashMap;

.field public static final d:Lw5/i;

.field public static final e:Lw5/i;

.field public static final f:Lw5/i;

.field public static final g:Lw5/i;

.field public static final h:Lw5/i;

.field public static final i:Lw5/i;

.field public static final j:Lw5/i;

.field public static final k:Lw5/i;

.field public static final l:Lw5/i;

.field public static final m:Lw5/i;

.field public static final n:Lw5/i;

.field public static final o:Lw5/i;

.field public static final p:Lw5/i;

.field public static final q:Lw5/i;

.field public static final r:Lw5/i;

.field public static final s:Lw5/i;

.field public static final t:Lw5/b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw5/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw5/i;->t:Lw5/b;

    new-instance v1, Lw5/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lw5/i;->b:Lw5/h;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lw5/i;->c:Ljava/util/LinkedHashMap;

    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->d:Lw5/i;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->e:Lw5/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->f:Lw5/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->g:Lw5/i;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->h:Lw5/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->i:Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->j:Lw5/i;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->k:Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->l:Lw5/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->m:Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->n:Lw5/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->o:Lw5/i;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->p:Lw5/i;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->q:Lw5/i;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->r:Lw5/i;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    move-result-object v1

    sput-object v1, Lw5/i;->s:Lw5/i;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    const-string v1, "TLS_AES_128_CCM_8_SHA256"

    invoke-static {v0, v1}, Lw5/b;->a(Lw5/b;Ljava/lang/String;)Lw5/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw5/i;->a:Ljava/lang/String;

    return-object v0
.end method
