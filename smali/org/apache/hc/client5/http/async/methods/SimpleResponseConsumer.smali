.class public final Lorg/apache/hc/client5/http/async/methods/SimpleResponseConsumer;
.super Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer<",
        "Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer;-><init>(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)V

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/async/methods/SimpleResponseConsumer;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleResponseConsumer;

    new-instance v1, Lorg/apache/hc/client5/http/async/methods/SimpleAsyncEntityConsumer;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/async/methods/SimpleAsyncEntityConsumer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleResponseConsumer;-><init>(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic buildResult(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/Object;Lorg/apache/hc/core5/http/ContentType;)Ljava/lang/Object;
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/async/methods/SimpleResponseConsumer;->buildResult(Lorg/apache/hc/core5/http/HttpResponse;[BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public buildResult(Lorg/apache/hc/core5/http/HttpResponse;[BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;
    .locals 0

    invoke-static {p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->copy(Lorg/apache/hc/core5/http/HttpResponse;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->setBody([BLorg/apache/hc/core5/http/ContentType;)V

    :cond_0
    return-object p1
.end method

.method public informationResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    return-void
.end method
