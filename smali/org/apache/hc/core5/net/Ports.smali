.class public Lorg/apache/hc/core5/net/Ports;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_VALUE:I = 0xffff

.field public static final MIN_VALUE:I = 0x0

.field public static final SCHEME_DEFAULT:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(I)I
    .locals 3

    const v0, 0xffff

    const-string v1, "Port number"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lorg/apache/hc/core5/util/Args;->checkRange(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static checkWithDefault(I)I
    .locals 3

    const v0, 0xffff

    const-string v1, "Port number(Use -1 to specify the scheme default port)"

    const/4 v2, -0x1

    invoke-static {p0, v2, v0, v1}, Lorg/apache/hc/core5/util/Args;->checkRange(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method
