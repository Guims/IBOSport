.class public abstract Lq5/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:LE1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LE1/a;

    const-string v1, "NULL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq5/i;->a:LE1/a;

    return-void
.end method

.method public static final a(LV4/i;Ljava/lang/Object;Ljava/lang/Object;Ld5/p;LV4/d;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p2}, Lr5/a;->l(LV4/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, Lq5/p;

    invoke-direct {v0, p4, p0}, Lq5/p;-><init>(LV4/d;LV4/i;)V

    const/4 p4, 0x2

    invoke-static {p4, p3}, Le5/p;->a(ILjava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    throw p1
.end method
