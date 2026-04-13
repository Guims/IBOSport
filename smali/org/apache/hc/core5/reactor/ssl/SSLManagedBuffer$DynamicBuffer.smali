.class final Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;
.super Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicBuffer"
.end annotation


# instance fields
.field private final length:I

.field private wrapped:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;-><init>()V

    const-string v0, "size"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;->length:I

    return-void
.end method


# virtual methods
.method public acquire()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;->wrapped:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;->length:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;->wrapped:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;->wrapped:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAcquired()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;->wrapped:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer$DynamicBuffer;->wrapped:Ljava/nio/ByteBuffer;

    return-void
.end method
