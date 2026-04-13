.class public final synthetic Lorg/apache/hc/client5/http/impl/async/l;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/RequestChannel;
.implements Lorg/apache/hc/core5/http/nio/CapacityChannel;


# instance fields
.field public final synthetic b:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/l;->b:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/l;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/l;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/nio/RequestChannel;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/l;->b:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v1, v0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->a(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public update(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/l;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/nio/CapacityChannel;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/l;->b:Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {v1, v0, p1}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->b(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/CapacityChannel;I)V

    return-void
.end method
