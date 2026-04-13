.class public final enum Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

.field public static final enum INPUT:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

.field public static final enum OUTPUT:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;->INPUT:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    const-string v2, "OUTPUT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;->OUTPUT:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    filled-new-array {v0, v1}, [Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;->$VALUES:[Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    return-object v0
.end method
