.class public Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/protocol/RedirectStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLocationURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->isPathEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setPathSegments([Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->build()Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance v1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v2, "Invalid redirect URI: "

    invoke-static {v2, p1}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLocationURI(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP response"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "Location"

    invoke-interface {p2, p3}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;->createLocationURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Ljava/net/URI;->isAbsolute()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p2

    :goto_0
    new-instance p2, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string p2, "Redirect location is missing"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRedirected(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 0

    const-string p3, "HTTP request"

    invoke-static {p1, p3}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "HTTP response"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "Location"

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p1

    const/16 p2, 0x133

    if-eq p1, p2, :cond_1

    const/16 p2, 0x134

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    return p3

    :cond_1
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
