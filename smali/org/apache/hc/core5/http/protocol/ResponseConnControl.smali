.class public Lorg/apache/hc/core5/http/protocol/ResponseConnControl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpResponseInterceptor;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 8

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0x190

    const-string v2, "close"

    const-string v3, "Connection"

    if-eq v0, v1, :cond_a

    const/16 v1, 0x198

    if-eq v0, v1, :cond_a

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_a

    const/16 v1, 0x19d

    if-eq v0, v1, :cond_a

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1, v3}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p3}, Lorg/apache/hc/core5/http/protocol/HttpContext;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-gez p2, :cond_1

    sget-object p2, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_0:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http/ProtocolVersion;->lessEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1, v3, v2}, Lorg/apache/hc/core5/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p3}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getRequest()Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object p2

    const-string p3, "keep-alive"

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    invoke-static {p2, v3}, Lorg/apache/hc/core5/http/message/MessageSupport;->iterate(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p2

    move v4, v1

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/hc/core5/http/HeaderElement;

    invoke-interface {v5}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    move v1, v7

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v7

    goto :goto_0

    :cond_4
    move v4, v1

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {p1, v3, v2}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    const-string p2, "Upgrade"

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "upgrade"

    invoke-interface {p1, v3, p2}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    if-eqz v4, :cond_8

    invoke-interface {p1, v3, p3}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    sget-object p2, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_0:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http/ProtocolVersion;->lessEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1, v3, v2}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    return-void

    :cond_a
    :goto_2
    invoke-interface {p1, v3, v2}, Lorg/apache/hc/core5/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
