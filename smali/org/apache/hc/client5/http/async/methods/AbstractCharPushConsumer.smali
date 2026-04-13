.class public abstract Lorg/apache/hc/client5/http/async/methods/AbstractCharPushConsumer;
.super Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public final consumePromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    :try_start_0
    invoke-interface {p3}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/hc/core5/http/ContentType;->parse(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p3
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/apache/hc/core5/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p4

    :cond_0
    if-nez p4, :cond_1

    sget-object p4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    :cond_1
    invoke-virtual {p0, p4}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->setCharset(Ljava/nio/charset/Charset;)V

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    sget-object p3, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_TEXT:Lorg/apache/hc/core5/http/ContentType;

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/async/methods/AbstractCharPushConsumer;->start(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/ContentType;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/hc/client5/http/async/methods/AbstractCharPushConsumer;->start(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/ContentType;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->completed()V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public abstract start(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/ContentType;)V
.end method
