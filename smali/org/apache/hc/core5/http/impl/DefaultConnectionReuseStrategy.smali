.class public Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/ConnectionReuseStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 9

    const-string v0, "HTTP response"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "close"

    const-string v1, "Connection"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicTokenIterator;

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/hc/core5/http/message/BasicTokenIterator;-><init>(Ljava/util/Iterator;)V

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_1
    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v3

    const/16 v4, 0xcc

    const-string v5, "Transfer-Encoding"

    const-string v6, "Content-Length"

    if-ne v3, v4, :cond_3

    invoke-interface {p2, v6}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v3}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_2

    return v2

    :catch_0
    :cond_2
    invoke-interface {p2, v5}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    invoke-interface {p2, v5}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    const-string p1, "chunked"

    invoke-interface {v3}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1, p2}, Lorg/apache/hc/core5/http/message/MessageSupport;->canResponseHaveBody(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpResponse;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p2, v6}, Lorg/apache/hc/core5/http/MessageHeaders;->countHeaders(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v4, :cond_6

    return v2

    :cond_6
    invoke-interface {p2, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    const-string p1, "Proxy-Connection"

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object p2

    goto :goto_1

    :cond_8
    invoke-interface {p3}, Lorg/apache/hc/core5/http/protocol/HttpContext;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object p2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    sget-object p3, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {p2, p3}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Lorg/apache/hc/core5/http/message/BasicTokenIterator;

    invoke-direct {p2, p1}, Lorg/apache/hc/core5/http/message/BasicTokenIterator;-><init>(Ljava/util/Iterator;)V

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    :cond_a
    return v4

    :cond_b
    new-instance p2, Lorg/apache/hc/core5/http/message/BasicTokenIterator;

    invoke-direct {p2, p1}, Lorg/apache/hc/core5/http/message/BasicTokenIterator;-><init>(Ljava/util/Iterator;)V

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "keep-alive"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v4

    :cond_d
    return v2

    :cond_e
    sget-object p1, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result p1

    return p1
.end method
