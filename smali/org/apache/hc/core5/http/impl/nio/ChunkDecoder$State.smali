.class final enum Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

.field public static final enum COMPLETED:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

.field public static final enum READ_CONTENT:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

.field public static final enum READ_FOOTERS:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    const-string v1, "READ_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->READ_CONTENT:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    const-string v2, "READ_FOOTERS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->READ_FOOTERS:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    new-instance v2, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    const-string v3, "COMPLETED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->COMPLETED:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    filled-new-array {v0, v1, v2}, [Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    return-object v0
.end method
