.class public final Landroidx/media3/common/VideoSize;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_HEIGHT:I = 0x0

.field private static final DEFAULT_PIXEL_WIDTH_HEIGHT_RATIO:F = 1.0f

.field private static final DEFAULT_WIDTH:I

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final UNKNOWN:Landroidx/media3/common/VideoSize;


# instance fields
.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final unappliedRotationDegrees:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media3/common/VideoSize;-><init>(II)V

    sput-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    sget v0, Lk0/C;->a:I

    const/16 v0, 0x24

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/VideoSize;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/VideoSize;->width:I

    iput p2, p0, Landroidx/media3/common/VideoSize;->height:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    iput p3, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Landroidx/media3/common/VideoSize;-><init>(IIF)V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/VideoSize;
    .locals 4

    sget-object v0, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    new-instance v2, Landroidx/media3/common/VideoSize;

    invoke-direct {v2, v0, v1, p0}, Landroidx/media3/common/VideoSize;-><init>(IIF)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/VideoSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/media3/common/VideoSize;

    iget v1, p0, Landroidx/media3/common/VideoSize;->width:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->width:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->height:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    iget p1, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0xd9

    iget v1, p0, Landroidx/media3/common/VideoSize;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Landroidx/media3/common/VideoSize;->width:I

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v1, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_2
    return-object v0
.end method
