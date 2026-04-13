.class public final LV/d;
.super Le5/h;

# interfaces
.implements Ld5/p;


# static fields
.field public static final b:LV/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LV/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le5/h;-><init>(I)V

    sput-object v0, LV/d;->b:LV/d;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LK5/x;

    check-cast p2, LK5/n;

    const-string v0, "path"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LK5/x;->b:LK5/j;

    invoke-virtual {p1}, LK5/j;->o()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lh3/e;->t(Ljava/lang/String;Z)LK5/x;

    move-result-object p1

    iget-object p1, p1, LK5/x;->b:LK5/j;

    invoke-virtual {p1}, LK5/j;->o()Ljava/lang/String;

    move-result-object p1

    new-instance p2, LT/S;

    invoke-direct {p2, p1}, LT/S;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
