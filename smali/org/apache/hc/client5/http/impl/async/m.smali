.class public final synthetic Lorg/apache/hc/client5/http/impl/async/m;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/RequestChannel;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field public final synthetic s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Lorg/apache/hc/core5/io/ModalCloseable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/io/ModalCloseable;Ljava/lang/Object;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lorg/apache/hc/client5/http/impl/async/m;->b:I

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/m;->u:Lorg/apache/hc/core5/io/ModalCloseable;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/m;->q:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/m;->r:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/m;->s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/m;->t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 14

    iget v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->u:Lorg/apache/hc/core5/io/ModalCloseable;

    move-object v1, v0

    check-cast v1, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lorg/apache/hc/core5/util/Timeout;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->t:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/hc/core5/http/protocol/HttpContext;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/m;->r:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/m;->s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->a(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->u:Lorg/apache/hc/core5/io/ModalCloseable;

    move-object v6, v0

    check-cast v6, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->q:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->t:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lorg/apache/hc/core5/concurrent/ComplexCancellable;

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/async/m;->r:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/async/m;->s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-object v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v6 .. v13}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->b(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexCancellable;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->u:Lorg/apache/hc/core5/io/ModalCloseable;

    move-object v6, v0

    check-cast v6, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->q:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/m;->t:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lorg/apache/hc/core5/concurrent/ComplexCancellable;

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/async/m;->r:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/async/m;->s:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-object v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v6 .. v13}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->h(Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexCancellable;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
