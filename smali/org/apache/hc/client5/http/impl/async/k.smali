.class public final synthetic Lorg/apache/hc/client5/http/impl/async/k;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/RequestChannel;


# instance fields
.field public final synthetic b:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

.field public final synthetic q:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field public final synthetic r:Lorg/apache/hc/core5/http/HttpHost;

.field public final synthetic s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

.field public final synthetic t:Lorg/apache/hc/core5/concurrent/ComplexFuture;

.field public final synthetic u:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

.field public final synthetic v:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/k;->b:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/k;->q:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/k;->r:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/k;->s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/k;->t:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/k;->u:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/k;->v:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    return-void
.end method


# virtual methods
.method public final sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 10

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/k;->u:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/k;->v:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/k;->b:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/k;->q:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/k;->r:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/k;->s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/k;->t:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->a(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
