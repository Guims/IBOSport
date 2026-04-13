.class public Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;
.super Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/hc/core5/http/HttpRequest;",
        ">",
        "Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final requestFactory:Lorg/apache/hc/core5/http/HttpRequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/HttpRequestFactory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpRequestFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequestFactory<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;-><init>(Lorg/apache/hc/core5/http/HttpRequestFactory;Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpRequestFactory;Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequestFactory<",
            "TT;>;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;-><init>(Lorg/apache/hc/core5/http/HttpRequestFactory;Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpRequestFactory;Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequestFactory<",
            "TT;>;",
            "Lorg/apache/hc/core5/http/message/LineParser;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;-><init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/config/Http1Config;)V

    const-string p2, "Request factory"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequestFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;->requestFactory:Lorg/apache/hc/core5/http/HttpRequestFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;->createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/util/CharArrayBuffer;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->getLineParser()Lorg/apache/hc/core5/http/message/LineParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/message/LineParser;->parseRequestLine(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/message/RequestLine;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;->requestFactory:Lorg/apache/hc/core5/http/HttpRequestFactory;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/message/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/message/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/http/HttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/message/RequestLine;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;->parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/SessionInputBuffer;",
            "Z)TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/HttpMessage;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequest;
    :try_end_0
    .catch Lorg/apache/hc/core5/http/MessageConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/hc/core5/http/RequestHeaderFieldsTooLargeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/hc/core5/http/RequestHeaderFieldsTooLargeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/MessageHeaders;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParser;->parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method
