.class public interface abstract Landroidx/media3/common/DebugViewProvider;
.super Ljava/lang/Object;


# static fields
.field public static final NONE:Landroidx/media3/common/DebugViewProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LA3/b;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, LA3/b;-><init>(I)V

    sput-object v0, Landroidx/media3/common/DebugViewProvider;->NONE:Landroidx/media3/common/DebugViewProvider;

    return-void
.end method

.method public static synthetic j(II)Landroid/view/SurfaceView;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/DebugViewProvider;->lambda$static$0(II)Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(II)Landroid/view/SurfaceView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract getDebugPreviewSurfaceView(II)Landroid/view/SurfaceView;
.end method
