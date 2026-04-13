.class public final synthetic Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/RequestChannel;


# instance fields
.field public final synthetic b:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;

.field public final synthetic q:Lorg/apache/hc/core5/util/Timeout;

.field public final synthetic r:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field public final synthetic s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

.field public final synthetic t:Lorg/apache/hc/core5/concurrent/CancellableDependency;

.field public final synthetic u:Lorg/apache/hc/core5/http/protocol/HttpContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->b:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->q:Lorg/apache/hc/core5/util/Timeout;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->r:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p4, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p5, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->t:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iput-object p6, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->u:Lorg/apache/hc/core5/http/protocol/HttpContext;

    return-void
.end method


# virtual methods
.method public final sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 9

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->t:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iget-object v5, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->u:Lorg/apache/hc/core5/http/protocol/HttpContext;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->b:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->q:Lorg/apache/hc/core5/util/Timeout;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->r:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;->s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->a(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
