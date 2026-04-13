.class public final Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/ExecChainHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Experimental;
.end annotation


# instance fields
.field private final backoffManager:Lorg/apache/hc/client5/http/classic/BackoffManager;

.field private final connectionBackoffStrategy:Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;Lorg/apache/hc/client5/http/classic/BackoffManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection backoff strategy"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Backoff manager"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;->connectionBackoffStrategy:Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;->backoffManager:Lorg/apache/hc/client5/http/classic/BackoffManager;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;Lorg/apache/hc/client5/http/classic/ExecChain;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Scope"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    :try_start_0
    invoke-interface {p3, p1, p2}, Lorg/apache/hc/client5/http/classic/ExecChain;->proceed(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;->connectionBackoffStrategy:Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;

    invoke-interface {p2, p1}, Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;->shouldBackoff(Lorg/apache/hc/core5/http/HttpResponse;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;->backoffManager:Lorg/apache/hc/client5/http/classic/BackoffManager;

    invoke-interface {p2, v0}, Lorg/apache/hc/client5/http/classic/BackoffManager;->backOff(Lorg/apache/hc/client5/http/HttpRoute;)V

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;->backoffManager:Lorg/apache/hc/client5/http/classic/BackoffManager;

    invoke-interface {p2, v0}, Lorg/apache/hc/client5/http/classic/BackoffManager;->probe(Lorg/apache/hc/client5/http/HttpRoute;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;->connectionBackoffStrategy:Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;

    invoke-interface {p2, p1}, Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;->backoffManager:Lorg/apache/hc/client5/http/classic/BackoffManager;

    invoke-interface {p2, v0}, Lorg/apache/hc/client5/http/classic/BackoffManager;->backOff(Lorg/apache/hc/client5/http/HttpRoute;)V

    :cond_1
    throw p1
.end method
