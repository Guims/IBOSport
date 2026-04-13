.class final Lorg/apache/hc/core5/http2/frame/StreamIdGenerator$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method public isSameSide(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
