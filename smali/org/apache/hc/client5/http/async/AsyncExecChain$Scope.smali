.class public final Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/async/AsyncExecChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scope"
.end annotation


# instance fields
.field public final cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

.field public final clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field public final exchangeId:Ljava/lang/String;

.field public final execCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

.field public final originalRequest:Lorg/apache/hc/core5/http/HttpRequest;

.field public final route:Lorg/apache/hc/client5/http/HttpRoute;

.field public final scheduler:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;-><init>(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Exchange id"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->exchangeId:Ljava/lang/String;

    const-string p1, "Route"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    const-string p1, "Original request"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/HttpRequest;

    const-string p1, "Dependency"

    invoke-static {p4, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->create()Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    const-string p1, "Exec runtime"

    invoke-static {p6, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    iput-object p7, p0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->scheduler:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;

    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    new-instance p8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x1

    invoke-direct {p8, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    :goto_1
    iput-object p8, p0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
