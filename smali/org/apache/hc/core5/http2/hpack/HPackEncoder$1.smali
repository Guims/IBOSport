.class synthetic Lorg/apache/hc/core5/http2/hpack/HPackEncoder$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/hpack/HPackEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$hc$core5$http2$hpack$HPackRepresentation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->values()[Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder$1;->$SwitchMap$org$apache$hc$core5$http2$hpack$HPackRepresentation:[I

    :try_start_0
    sget-object v1, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->WITH_INDEXING:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder$1;->$SwitchMap$org$apache$hc$core5$http2$hpack$HPackRepresentation:[I

    sget-object v1, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->WITHOUT_INDEXING:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder$1;->$SwitchMap$org$apache$hc$core5$http2$hpack$HPackRepresentation:[I

    sget-object v1, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->NEVER_INDEXED:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
