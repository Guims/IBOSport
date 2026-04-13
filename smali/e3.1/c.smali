.class public final Le3/c;
.super LE5/l;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:LE5/l;

.field public final synthetic d:Le3/d;


# direct methods
.method public constructor <init>(Le3/d;Landroid/content/Context;Landroid/text/TextPaint;LE5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/c;->d:Le3/d;

    iput-object p2, p0, Le3/c;->a:Landroid/content/Context;

    iput-object p3, p0, Le3/c;->b:Landroid/text/TextPaint;

    iput-object p4, p0, Le3/c;->c:LE5/l;

    return-void
.end method


# virtual methods
.method public final y(I)V
    .locals 1

    iget-object v0, p0, Le3/c;->c:LE5/l;

    invoke-virtual {v0, p1}, LE5/l;->y(I)V

    return-void
.end method

.method public final z(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, Le3/c;->a:Landroid/content/Context;

    iget-object v1, p0, Le3/c;->b:Landroid/text/TextPaint;

    iget-object v2, p0, Le3/c;->d:Le3/d;

    invoke-virtual {v2, v0, v1, p1}, Le3/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Le3/c;->c:LE5/l;

    invoke-virtual {v0, p1, p2}, LE5/l;->z(Landroid/graphics/Typeface;Z)V

    return-void
.end method
