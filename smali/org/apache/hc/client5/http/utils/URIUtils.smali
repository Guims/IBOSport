.class public Lorg/apache/hc/client5/http/utils/URIUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v0, p2}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/hc/core5/net/URIAuthority;->getHostName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/hc/core5/net/URIAuthority;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setPort(I)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setPort(I)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static extractHost(Ljava/net/URI;)Lorg/apache/hc/core5/http/HttpHost;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v1, p0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Lorg/apache/hc/core5/net/URIBuilder;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lorg/apache/hc/core5/net/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/hc/core5/net/URIBuilder;->getPort()I

    move-result v1

    invoke-static {v2}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    new-instance v3, Lorg/apache/hc/core5/http/HttpHost;

    invoke-direct {v3, p0, v2, v1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static normalizeSyntax(Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->normalizeSyntax()Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    iget-object p0, p0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->isPathEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ""

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setPathSegments([Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_2
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 0

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 3

    const-string v0, "Base URI"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Reference URI"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "#"

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    :goto_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/URIUtils;->normalizeSyntax(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static resolve(Ljava/net/URI;Lorg/apache/hc/core5/http/HttpHost;Ljava/util/List;)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    const-string v0, "Request URI"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-nez v1, :cond_1

    if-ltz v2, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setFragment(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;)V

    :goto_2
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->getFragment()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setFragment(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->isAbsolute()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setPort(I)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_4
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static rewriteURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "URI"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setUserInfo(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->isPathEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ""

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setPathSegments([Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_2
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setFragment(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static rewriteURI(Ljava/net/URI;Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/URI;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/hc/client5/http/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/hc/core5/http/HttpHost;Z)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static rewriteURI(Ljava/net/URI;Lorg/apache/hc/core5/http/HttpHost;Z)Ljava/net/URI;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "URI"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setPort(I)Lorg/apache/hc/core5/net/URIBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setPort(I)Lorg/apache/hc/core5/net/URIBuilder;

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setFragment(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_2
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->getPathSegments()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eq p2, p0, :cond_5

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/net/URIBuilder;->setPathSegments(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, ""

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;->setPathSegments([Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_6
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method
