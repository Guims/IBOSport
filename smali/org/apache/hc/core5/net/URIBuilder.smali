.class public Lorg/apache/hc/core5/net/URIBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final PARAM_VALUE_SEPARATOR:C = '='

.field private static final PATH_SEPARATOR:C = '/'

.field private static final PATH_SEPARATORS:Ljava/util/BitSet;

.field private static final QUERY_PARAM_SEPARATOR:C = '&'

.field private static final QUERY_PARAM_SEPARATORS:Ljava/util/BitSet;

.field private static final QUERY_VALUE_SEPARATORS:Ljava/util/BitSet;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private encodedAuthority:Ljava/lang/String;

.field private encodedFragment:Ljava/lang/String;

.field private encodedPath:Ljava/lang/String;

.field private encodedQuery:Ljava/lang/String;

.field private encodedSchemeSpecificPart:Ljava/lang/String;

.field private encodedUserInfo:Ljava/lang/String;

.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private pathRootless:Z

.field private pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private query:Ljava/lang/String;

.field private queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private scheme:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/hc/core5/net/URIBuilder;->QUERY_PARAM_SEPARATORS:Ljava/util/BitSet;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/hc/core5/net/URIBuilder;->QUERY_VALUE_SEPARATORS:Ljava/util/BitSet;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lorg/apache/hc/core5/net/URIBuilder;->PATH_SEPARATORS:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/net/URIBuilder;->digestURI(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->lambda$getFirstQueryParam$2(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->lambda$removeParameter$0(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z

    move-result p0

    return p0
.end method

.method private buildString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->scheme:Ljava/lang/String;

    const/16 v2, 0x3a

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedAuthority:Ljava/lang/String;

    const-string v3, "//"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    move v1, v4

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    const-string v3, "@"

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    iget-object v6, p0, Lorg/apache/hc/core5/net/URIBuilder;->userInfo:Ljava/lang/String;

    invoke-virtual {v6, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v6, v7}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->userInfo:Ljava/lang/String;

    add-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->userInfo:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/hc/core5/net/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->port:I

    if-ltz v1, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    move v1, v5

    :goto_4
    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    invoke-static {v2}, Lorg/apache/hc/core5/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    if-eqz v2, :cond_c

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathRootless:Z

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    move v4, v5

    :goto_5
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v2, v4, v1}, Lorg/apache/hc/core5/net/URIBuilder;->formatPath(Ljava/lang/StringBuilder;Ljava/lang/Iterable;ZLjava/nio/charset/Charset;)V

    :cond_c
    :goto_6
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2, v5}, Lorg/apache/hc/core5/net/URIBuilder;->formatQuery(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/nio/charset/Charset;Z)V

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    sget-object v3, Lorg/apache/hc/core5/net/PercentCodec;->URIC:Ljava/util/BitSet;

    invoke-static {v0, v1, v2, v3, v5}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)V

    :cond_f
    :goto_7
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedFragment:Ljava/lang/String;

    const-string v2, "#"

    if-eqz v1, :cond_10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_10
    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    :cond_11
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->lambda$setParameter$1(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z

    move-result p0

    return p0
.end method

.method private digestURI(Ljava/net/URI;Ljava/nio/charset/Charset;)V
    .locals 4

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->scheme:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/hc/core5/net/InetAddressUtils;->isIPv6URLBracketedAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->port:I

    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->userInfo:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedAuthority:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {v0}, Lorg/apache/hc/core5/net/URIAuthority;->parse(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIAuthority;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIAuthority;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/hc/core5/net/PercentCodec;->decode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->userInfo:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIAuthority;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/hc/core5/net/PercentCodec;->decode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIAuthority;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->port:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/hc/core5/net/URIBuilder;->parsePath(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathRootless:Z

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, v2}, Lorg/apache/hc/core5/net/URIBuilder;->parseQuery(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->fragment:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static formatPath(Ljava/lang/StringBuilder;Ljava/lang/Iterable;ZLjava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-gtz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p0, v1, p3}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static formatQuery(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/nio/charset/Charset;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http/NameValuePair;

    if-lez v0, :cond_0

    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v1}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    invoke-interface {v1}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic lambda$getFirstQueryParam$2(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z
    .locals 0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$removeParameter$0(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z
    .locals 0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setParameter$1(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z
    .locals 0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static localhost()Lorg/apache/hc/core5/net/URIBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>()V

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/net/InetAddress;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static loopbackAddress()Lorg/apache/hc/core5/net/URIBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>()V

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/net/InetAddress;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static parsePath(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/hc/core5/net/URIBuilder;->splitPath(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/hc/core5/net/PercentCodec;->decode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static parseQuery(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/nio/charset/Charset;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/hc/core5/util/Tokenizer;->INSTANCE:Lorg/apache/hc/core5/util/Tokenizer;

    new-instance v2, Lorg/apache/hc/core5/http/message/ParserCursor;

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lorg/apache/hc/core5/net/URIBuilder;->QUERY_PARAM_SEPARATORS:Ljava/util/BitSet;

    invoke-virtual {v1, p0, v2, v4}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v5

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_2

    sget-object v5, Lorg/apache/hc/core5/net/URIBuilder;->QUERY_VALUE_SEPARATORS:Ljava/util/BitSet;

    invoke-virtual {v1, p0, v2, v5}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    goto :goto_1

    :cond_2
    move-object v5, v0

    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-static {v4, p1, p2}, Lorg/apache/hc/core5/net/PercentCodec;->decode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, p1, p2}, Lorg/apache/hc/core5/net/PercentCodec;->decode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public static splitPath(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_1
    sget-object v1, Lorg/apache/hc/core5/net/URIBuilder;->PATH_SEPARATORS:Ljava/util/BitSet;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v4

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    sget-object v5, Lorg/apache/hc/core5/net/URIBuilder;->PATH_SEPARATORS:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    goto :goto_0
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/net/URIBuilder;->addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public addParameters(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;)",
            "Lorg/apache/hc/core5/net/URIBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public appendPath(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/hc/core5/net/URIBuilder;->splitPath(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->appendPathSegments(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_0
    return-object p0
.end method

.method public appendPathSegments(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/hc/core5/net/URIBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public varargs appendPathSegments([Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->appendPathSegments(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Ljava/net/URI;
    .locals 2

    new-instance v0, Ljava/net/URI;

    invoke-direct {p0}, Lorg/apache/hc/core5/net/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public clearParameters()Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthority()Lorg/apache/hc/core5/net/URIAuthority;
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-virtual {p0}, Lorg/apache/hc/core5/net/URIBuilder;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/hc/core5/net/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/hc/core5/net/URIBuilder;->getPort()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFirstQueryParam(Ljava/lang/String;)Lorg/apache/hc/core5/http/NameValuePair;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LB4/i;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, LB4/i;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/NameValuePair;

    return-object p1
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->port:I

    return v0
.end method

.method public getQueryParams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPathEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isQueryEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public normalizeSyntax()Lorg/apache/hc/core5/net/URIBuilder;
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->scheme:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathRootless:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedAuthority:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedFragment:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_6
    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    return-object p0

    :cond_7
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    :cond_8
    :goto_1
    return-object p0
.end method

.method public removeParameter(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 3

    const-string v0, "param"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, LB4/i;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, LB4/i;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public removeQuery()Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthority(Lorg/apache/hc/core5/net/NamedEndpoint;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/net/URIBuilder;->setUserInfo(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setPort(I)Lorg/apache/hc/core5/net/URIBuilder;

    return-object p0
.end method

.method public setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/hc/core5/net/URIAuthority;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/net/URIBuilder;->setUserInfo(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/net/URIAuthority;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/net/URIAuthority;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setPort(I)Lorg/apache/hc/core5/net/URIBuilder;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setCustomQuery(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 2

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    return-object p0
.end method

.method public setFragment(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 2

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->fragment:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedFragment:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/net/InetAddress;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->host:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/net/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setPort(I)Lorg/apache/hc/core5/net/URIBuilder;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, LB4/i;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, LB4/i;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public setParameters(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;)",
            "Lorg/apache/hc/core5/net/URIBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->queryParams:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedQuery:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/hc/core5/net/URIBuilder;->splitPath(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/net/URIBuilder;->setPathSegments(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;

    if-eqz p1, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathRootless:Z

    return-object p0
.end method

.method public setPathSegments(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/hc/core5/net/URIBuilder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathRootless:Z

    return-object p0
.end method

.method public varargs setPathSegments([Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setPathSegments(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPathSegmentsRootless(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/hc/core5/net/URIBuilder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathSegments:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedPath:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->pathRootless:Z

    return-object p0
.end method

.method public varargs setPathSegmentsRootless([Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setPathSegmentsRootless(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPort(I)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->port:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public setSchemeSpecificPart(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setSchemeSpecificPart(Ljava/lang/String;Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;)",
            "Lorg/apache/hc/core5/net/URIBuilder;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->charset:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lorg/apache/hc/core5/net/URIBuilder;->formatQuery(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/nio/charset/Charset;Z)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public varargs setSchemeSpecificPart(Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/net/URIBuilder;->setSchemeSpecificPart(Ljava/lang/String;Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUserInfo(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 2

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/net/URIBuilder;->userInfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedAuthority:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/hc/core5/net/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setUserInfo(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/net/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
