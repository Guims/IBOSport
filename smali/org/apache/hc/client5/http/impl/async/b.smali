.class public final synthetic Lorg/apache/hc/client5/http/impl/async/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecChain;
.implements Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;
.implements Lorg/apache/hc/core5/function/Resolver;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/b;->b:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method public resolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/b;->b:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/client5/http/config/ConnectionConfig;

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->e(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p1

    return-object p1
.end method

.method public scheduleExecution(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/b;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->executeScheduled(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method
