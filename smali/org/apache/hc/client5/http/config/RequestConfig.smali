.class public Lorg/apache/hc/client5/http/config/RequestConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/hc/client5/http/config/RequestConfig;

.field private static final DEFAULT_CONNECTION_REQUEST_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

.field private static final DEFAULT_CONN_KEEP_ALIVE:Lorg/apache/hc/core5/util/TimeValue;


# instance fields
.field private final authenticationEnabled:Z

.field private final circularRedirectsAllowed:Z

.field private final connectTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final connectionKeepAlive:Lorg/apache/hc/core5/util/TimeValue;

.field private final connectionRequestTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final contentCompressionEnabled:Z

.field private final cookieSpec:Ljava/lang/String;

.field private final expectContinueEnabled:Z

.field private final hardCancellationEnabled:Z

.field private final maxRedirects:I

.field private final proxy:Lorg/apache/hc/core5/http/HttpHost;

.field private final proxyPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final redirectsEnabled:Z

.field private final responseTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final targetPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofMinutes(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v2

    sput-object v2, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT_CONNECTION_REQUEST_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->ofMinutes(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT_CONN_KEEP_ALIVE:Lorg/apache/hc/core5/util/TimeValue;

    new-instance v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->build()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    sget-object v10, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT_CONNECTION_REQUEST_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    sget-object v13, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT_CONN_KEEP_ALIVE:Lorg/apache/hc/core5/util/TimeValue;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lorg/apache/hc/client5/http/config/RequestConfig;-><init>(ZLorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;ZZIZLjava/util/Collection;Ljava/util/Collection;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/TimeValue;ZZ)V

    return-void
.end method

.method public constructor <init>(ZLorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;ZZIZLjava/util/Collection;Ljava/util/Collection;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/TimeValue;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/lang/String;",
            "ZZIZ",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->expectContinueEnabled:Z

    iput-object p2, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p3, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->cookieSpec:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->redirectsEnabled:Z

    iput-boolean p5, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->circularRedirectsAllowed:Z

    iput p6, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->maxRedirects:I

    iput-boolean p7, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->authenticationEnabled:Z

    iput-object p8, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->targetPreferredAuthSchemes:Ljava/util/Collection;

    iput-object p9, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    iput-object p10, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->connectionRequestTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p11, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p12, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->responseTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p13, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->connectionKeepAlive:Lorg/apache/hc/core5/util/TimeValue;

    iput-boolean p14, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->contentCompressionEnabled:Z

    iput-boolean p15, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->hardCancellationEnabled:Z

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT_CONNECTION_REQUEST_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public static synthetic access$100()Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT_CONN_KEEP_ALIVE:Lorg/apache/hc/core5/util/TimeValue;

    return-object v0
.end method

.method public static copy(Lorg/apache/hc/client5/http/config/RequestConfig;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->isExpectContinueEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setExpectContinueEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getProxy()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setProxy(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setCookieSpec(Ljava/lang/String;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setRedirectsEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->isCircularRedirectsAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setCircularRedirectsAllowed(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getMaxRedirects()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setMaxRedirects(I)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setAuthenticationEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getTargetPreferredAuthSchemes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getProxyPreferredAuthSchemes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectionRequestTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setConnectionRequestTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setConnectTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getResponseTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setResponseTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectionKeepAlive()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setConnectionKeepAlive(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->isContentCompressionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setContentCompressionEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->isHardCancellationEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setHardCancellationEnabled(Z)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/hc/client5/http/config/RequestConfig$Builder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/RequestConfig;->clone()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/hc/client5/http/config/RequestConfig;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object v0
.end method

.method public getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public getConnectionKeepAlive()Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->connectionKeepAlive:Lorg/apache/hc/core5/util/TimeValue;

    return-object v0
.end method

.method public getConnectionRequestTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->connectionRequestTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public getCookieSpec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->cookieSpec:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRedirects()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->maxRedirects:I

    return v0
.end method

.method public getProxy()Lorg/apache/hc/core5/http/HttpHost;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    return-object v0
.end method

.method public getProxyPreferredAuthSchemes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    return-object v0
.end method

.method public getResponseTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->responseTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public getTargetPreferredAuthSchemes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->targetPreferredAuthSchemes:Ljava/util/Collection;

    return-object v0
.end method

.method public isAuthenticationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->authenticationEnabled:Z

    return v0
.end method

.method public isCircularRedirectsAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->circularRedirectsAllowed:Z

    return v0
.end method

.method public isContentCompressionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->contentCompressionEnabled:Z

    return v0
.end method

.method public isExpectContinueEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->expectContinueEnabled:Z

    return v0
.end method

.method public isHardCancellationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->hardCancellationEnabled:Z

    return v0
.end method

.method public isRedirectsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->redirectsEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[expectContinueEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->expectContinueEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cookieSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->cookieSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", redirectsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->redirectsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxRedirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->maxRedirects:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", circularRedirectsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->circularRedirectsAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", authenticationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->authenticationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", targetPreferredAuthSchemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->targetPreferredAuthSchemes:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", proxyPreferredAuthSchemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionRequestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->connectionRequestTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->responseTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionKeepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->connectionKeepAlive:Lorg/apache/hc/core5/util/TimeValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentCompressionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->contentCompressionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hardCancellationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/config/RequestConfig;->hardCancellationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
