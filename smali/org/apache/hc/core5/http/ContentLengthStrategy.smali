.class public interface abstract Lorg/apache/hc/core5/http/ContentLengthStrategy;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final CHUNKED:J = -0x1L

.field public static final UNDEFINED:J = -0x7fffffffffffffffL


# virtual methods
.method public abstract determineLength(Lorg/apache/hc/core5/http/HttpMessage;)J
.end method
