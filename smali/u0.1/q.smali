.class public interface abstract Lu0/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lu0/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu0/q;->a:Lu0/o;

    return-void
.end method


# virtual methods
.method public a(Lu0/m;Landroidx/media3/common/Format;)Lu0/p;
    .locals 0

    sget-object p1, Lu0/p;->i:Lq0/h;

    return-object p1
.end method

.method public abstract b(Lu0/m;Landroidx/media3/common/Format;)Lu0/j;
.end method

.method public abstract c(Landroid/os/Looper;Lq0/q;)V
.end method

.method public abstract d(Landroidx/media3/common/Format;)I
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
