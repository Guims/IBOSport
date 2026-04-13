.class public interface abstract Lorg/apache/hc/client5/http/classic/ExecChainHandler;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public abstract execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;Lorg/apache/hc/client5/http/classic/ExecChain;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
.end method
