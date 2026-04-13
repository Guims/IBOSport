.class public final Lt5/k;
.super Lm5/s;


# static fields
.field public static final r:Lt5/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt5/k;

    invoke-direct {v0}, Lm5/s;-><init>()V

    sput-object v0, Lt5/k;->r:Lt5/k;

    return-void
.end method


# virtual methods
.method public final x(LV4/i;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p1, Lt5/d;->s:Lt5/d;

    sget-object v0, Lt5/j;->h:LE2/j;

    iget-object p1, p1, Lt5/g;->r:Lt5/b;

    invoke-virtual {p1, p2, v0}, Lt5/b;->b(Ljava/lang/Runnable;LE2/j;)V

    return-void
.end method
