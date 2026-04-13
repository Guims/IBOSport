.class public interface abstract Lf1/k;
.super Ljava/lang/Object;


# static fields
.field public static final g:LW3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW3/e;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, LW3/e;-><init>(I)V

    sput-object v0, Lf1/k;->g:LW3/e;

    return-void
.end method


# virtual methods
.method public abstract c(Landroidx/media3/common/Format;)I
.end method

.method public abstract k(Landroidx/media3/common/Format;)Lf1/m;
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)Z
.end method
