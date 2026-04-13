.class abstract Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;,
        Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$StaticBuffer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;I)Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;->DYNAMIC:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    if-ne p0, v0, :cond_0

    new-instance p0, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;-><init>(I)V

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$StaticBuffer;

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$StaticBuffer;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public abstract acquire()Ljava/nio/ByteBuffer;
.end method

.method public abstract hasData()Z
.end method

.method public abstract isAcquired()Z
.end method

.method public abstract release()V
.end method
