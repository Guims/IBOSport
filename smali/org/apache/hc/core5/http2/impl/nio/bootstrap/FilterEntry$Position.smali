.class final enum Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

.field public static final enum AFTER:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

.field public static final enum BEFORE:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

.field public static final enum FIRST:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

.field public static final enum LAST:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

.field public static final enum REPLACE:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    const-string v1, "BEFORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->BEFORE:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    const-string v2, "AFTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->AFTER:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    new-instance v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    const-string v3, "REPLACE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->REPLACE:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    new-instance v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    const-string v4, "FIRST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->FIRST:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    new-instance v4, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    const-string v5, "LAST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->LAST:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->$VALUES:[Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->$VALUES:[Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    return-object v0
.end method
