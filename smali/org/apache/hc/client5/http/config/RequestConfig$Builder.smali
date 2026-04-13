.class public Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/config/RequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private authenticationEnabled:Z

.field private circularRedirectsAllowed:Z

.field private connectTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private connectionKeepAlive:Lorg/apache/hc/core5/util/TimeValue;

.field private connectionRequestTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private contentCompressionEnabled:Z

.field private cookieSpec:Ljava/lang/String;

.field private expectContinueEnabled:Z

.field private hardCancellationEnabled:Z

.field private maxRedirects:I

.field private proxy:Lorg/apache/hc/core5/http/HttpHost;

.field private proxyPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectsEnabled:Z

.field private responseTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private targetPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->redirectsEnabled:Z

    const/16 v1, 0x32

    iput v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->maxRedirects:I

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->authenticationEnabled:Z

    invoke-static {}, Lorg/apache/hc/client5/http/config/RequestConfig;->access$000()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectionRequestTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->contentCompressionEnabled:Z

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->hardCancellationEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/client5/http/config/RequestConfig;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/hc/client5/http/config/RequestConfig;

    iget-boolean v2, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->expectContinueEnabled:Z

    iget-object v3, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v4, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->cookieSpec:Ljava/lang/String;

    iget-boolean v5, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->redirectsEnabled:Z

    iget-boolean v6, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->circularRedirectsAllowed:Z

    iget v7, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->maxRedirects:I

    iget-boolean v8, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->authenticationEnabled:Z

    iget-object v9, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->targetPreferredAuthSchemes:Ljava/util/Collection;

    iget-object v10, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    iget-object v11, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectionRequestTimeout:Lorg/apache/hc/core5/util/Timeout;

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/config/RequestConfig;->access$000()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v11

    :goto_0
    iget-object v12, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    iget-object v13, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->responseTimeout:Lorg/apache/hc/core5/util/Timeout;

    iget-object v14, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectionKeepAlive:Lorg/apache/hc/core5/util/TimeValue;

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/apache/hc/client5/http/config/RequestConfig;->access$100()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v14

    :goto_1
    iget-boolean v15, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->contentCompressionEnabled:Z

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->hardCancellationEnabled:Z

    move-object/from16 v17, v16

    move/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lorg/apache/hc/client5/http/config/RequestConfig;-><init>(ZLorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;ZZIZLjava/util/Collection;Ljava/util/Collection;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/TimeValue;ZZ)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public setAuthenticationEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->authenticationEnabled:Z

    return-object p0
.end method

.method public setCircularRedirectsAllowed(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->circularRedirectsAllowed:Z

    return-object p0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2, p3}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setConnectTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setConnectionKeepAlive(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectionKeepAlive:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public setConnectionRequestTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectionRequestTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setConnectionRequestTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectionRequestTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setContentCompressionEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->contentCompressionEnabled:Z

    return-object p0
.end method

.method public setCookieSpec(Ljava/lang/String;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->cookieSpec:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultKeepAlive(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->connectionKeepAlive:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public setExpectContinueEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->expectContinueEnabled:Z

    return-object p0
.end method

.method public setHardCancellationEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->hardCancellationEnabled:Z

    return-object p0
.end method

.method public setMaxRedirects(I)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->maxRedirects:I

    return-object p0
.end method

.method public setProxy(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    return-object p0
.end method

.method public setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/hc/client5/http/config/RequestConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    return-object p0
.end method

.method public setRedirectsEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->redirectsEnabled:Z

    return-object p0
.end method

.method public setResponseTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->responseTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setResponseTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->responseTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/hc/client5/http/config/RequestConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->targetPreferredAuthSchemes:Ljava/util/Collection;

    return-object p0
.end method
