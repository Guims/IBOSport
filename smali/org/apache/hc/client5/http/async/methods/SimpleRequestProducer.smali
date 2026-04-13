.class public final Lorg/apache/hc/client5/http/async/methods/SimpleRequestProducer;
.super Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;-><init>(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public static create(Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestProducer;
    .locals 3

    const-string v0, "Request"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->getBody()Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->getBodyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->getContentType()Lorg/apache/hc/core5/http/ContentType;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;-><init>(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/ContentType;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->getBodyBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->getContentType()Lorg/apache/hc/core5/http/ContentType;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;-><init>([BLorg/apache/hc/core5/http/ContentType;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestProducer;

    invoke-direct {v0, p0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestProducer;-><init>(Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-object v0
.end method
