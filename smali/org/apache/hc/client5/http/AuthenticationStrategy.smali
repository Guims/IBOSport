.class public interface abstract Lorg/apache/hc/client5/http/AuthenticationStrategy;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public abstract select(Lorg/apache/hc/client5/http/auth/ChallengeType;Ljava/util/Map;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/auth/ChallengeType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/auth/AuthChallenge;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/auth/AuthScheme;",
            ">;"
        }
    .end annotation
.end method
