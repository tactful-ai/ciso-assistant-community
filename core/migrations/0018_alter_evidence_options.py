# Generated by Django 4.2.5 on 2023-10-02 11:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0017_remove_evidence_ref_url'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='evidence',
            options={'verbose_name': 'Evidence', 'verbose_name_plural': 'Evidences'},
        ),
    ]
