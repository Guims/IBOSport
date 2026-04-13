.class public final Landroidx/media3/common/GlTextureInfo;
.super Ljava/lang/Object;


# static fields
.field public static final UNSET:Landroidx/media3/common/GlTextureInfo;


# instance fields
.field public final fboId:I

.field public final height:I

.field public final rboId:I

.field public final texId:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/media3/common/GlTextureInfo;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/GlTextureInfo;-><init>(IIIII)V

    sput-object v0, Landroidx/media3/common/GlTextureInfo;->UNSET:Landroidx/media3/common/GlTextureInfo;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/GlTextureInfo;->texId:I

    iput p2, p0, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iput p3, p0, Landroidx/media3/common/GlTextureInfo;->rboId:I

    iput p4, p0, Landroidx/media3/common/GlTextureInfo;->width:I

    iput p5, p0, Landroidx/media3/common/GlTextureInfo;->height:I

    return-void
.end method


# virtual methods
.method public release()V
    .locals 4

    iget v0, p0, Landroidx/media3/common/GlTextureInfo;->texId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-static {}, Lk0/c;->e()V

    :cond_0
    iget v0, p0, Landroidx/media3/common/GlTextureInfo;->fboId:I

    if-eq v0, v3, :cond_1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    invoke-static {}, Lk0/c;->e()V

    :cond_1
    iget v0, p0, Landroidx/media3/common/GlTextureInfo;->rboId:I

    if-eq v0, v3, :cond_2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    invoke-static {}, Lk0/c;->e()V

    :cond_2
    return-void
.end method
