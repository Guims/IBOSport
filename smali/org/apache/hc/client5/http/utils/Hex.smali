.class public Lorg/apache/hc/client5/http/utils/Hex;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final DIGITS_LOWER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/hc/client5/http/utils/Hex;->DIGITS_LOWER:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeHex([BII[C[CI)V
    .locals 4

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, p5, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v3, v2, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, p3, v3

    aput-char v3, p4, p5

    add-int/lit8 p5, p5, 0x2

    and-int/lit8 v2, v2, 0xf

    aget-char v2, p3, v2

    aput-char v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 7

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [C

    array-length v3, p0

    sget-object v4, Lorg/apache/hc/client5/http/utils/Hex;->DIGITS_LOWER:[C

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lorg/apache/hc/client5/http/utils/Hex;->encodeHex([BII[C[CI)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
