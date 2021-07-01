name: Отчет об ошибке
about: Создайте отчет, чтобы помочь нам улучшить сборку.
title: "[BUG]:"
assignees: ''
body:
  - type: markdown
    attributes:
      value: |
        Заполните пожалуйста отчёт об ошибке.
  - type: textarea
    id: what-happened
    attributes:
      label: Описание проблемы.
      description: Четкое и краткое описание вашей проблемы.
    validations:
      required: true
  - type: textarea
    id: logs
    attributes:
      label: Соответствующие логи.
      description: Относящиеся логи и другая информация, которая поможет идентифицировать ошибку.
      render: shell
  - type: checkboxes
    id: bingo
    attributes:
      label: Бинго отчёта.
      description: Поставьте флажки соотносительно данному бинго.
      options:
        - label: Проблема может быть воспроизведена хотя бы один раз.
        - label: Проблема может быть воспроизведена разными игроками.
        - label: Проблема произошла в недавнем (менее 7 дней назад) раунде.
        - label: Проблема может быть воспроизведена хотя бы один раз.
        - label: Не удалось найти существующую проблему по этому поводу.
          required: true
