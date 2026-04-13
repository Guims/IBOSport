.class public Lorg/apache/hc/core5/http/protocol/ResponseContent;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpResponseInterceptor;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final overwrite:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/protocol/ResponseContent;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/protocol/ResponseContent;->overwrite:Z

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 7

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/protocol/ResponseContent;->overwrite:Z

    const-string v1, "Transfer-Encoding"

    const-string v2, "Content-Length"

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/http/HttpMessage;->removeHeaders(Ljava/lang/String;)Z

    invoke-interface {p1, v2}, Lorg/apache/hc/core5/http/HttpMessage;->removeHeaders(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1, v2}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    invoke-interface {p3}, Lorg/apache/hc/core5/http/protocol/HttpContext;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object p3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    invoke-interface {p2}, Lorg/apache/hc/core5/http/EntityDetails;->isChunked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v2, p3}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {p3, v0}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "chunked"

    invoke-interface {p1, v1, p3}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lorg/apache/hc/core5/http/message/MessageSupport;->addTrailerHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V

    :cond_2
    :goto_1
    invoke-static {p1, p2}, Lorg/apache/hc/core5/http/message/MessageSupport;->addContentTypeHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V

    invoke-static {p1, p2}, Lorg/apache/hc/core5/http/message/MessageSupport;->addContentEncodingHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V

    return-void

    :cond_3
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p2

    const/16 p3, 0xcc

    if-eq p2, p3, :cond_4

    const/16 p3, 0x130

    if-eq p2, p3, :cond_4

    const-string p2, "0"

    invoke-interface {p1, v2, p2}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string p2, "Content-Length header already present"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string p2, "Transfer-encoding header already present"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
